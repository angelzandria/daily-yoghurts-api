from flask import*
import pymysql
import os



app = Flask(__name__)
app.config['UPLOAD_FOLDER']= 'static/images'

@app.route('/api/signup', methods=['POST'])
def signup():
    if request.method=='POST':
        username = request.form['username']
        email = request.form['email']
        password = request.form['password']
        phone = request.form['phone']

        # connecting with database
        connection = pymysql.connect(host='localhost',user='root',password='',database='Angel_oryx')

        # initialize connection
        cursor = connection.cursor()

        # sql command inserting new user
        sql = 'INSERT INTO `users` (`username`,`email`,`password`,`phone`)VALUES(%s,%s,%s,%s)'
        data =(username,email,password,phone)

        #  execution of command
        cursor.execute(sql,data)

        # save the changes by commiting
        connection.commit()

    return jsonify({"success":"thanks for joining"})

@app.route('/api/signin',methods=['POST'])
def signin():

    if request.method=='POST':
        email=request.form['email']
        password=request.form['password']

# conection to the database
        connection = pymysql.connect(host='localhost',user='root',password='',database='Angel_oryx')

        # initialize connection
        cursor = connection.cursor(pymysql.cursors.DictCursor)

        # sql command validating email and password
        sql = 'SELECT * FROM `users` WHERE `email`=%s AND `password`=%s'
        data = (email,password)

        # execution of command
        cursor.execute(sql,data)

        count = cursor.rowcount

        if count == 0:
            return jsonify ({"message":"log in failed try again"})
        else:
            user = cursor.fetchone()
            # removing password before sending user data
            user.pop('password',None)

            return jsonify ({"message":"log in succesful","user":user})
        

@app.route('/api/addProduct',methods =['POST'])
def addProduct():

    if  request.method=='POST':
        product_name=request.form['product_name']
        product_description=request.form['product_description']
        product_cost=request.form['product_cost']
        
        # extract image data
        product_photo =request.files['product_photo']

        # filename
        filename= product_photo.filename

        # image path
        photo_path = os.path.join(app.config['UPLOAD_FOLDER'],filename)

        # changing locations
        product_photo.save(photo_path)

        # connection to database
        connection = pymysql.connect(host='localhost',user='root',password='',database='Angel_oryx')

        # initialize database
        cursor = connection.cursor()

        # sql command 
        sql = 'INSERT INTO `product_details`(`product_name`,`product_description`,`product_cost`,`product_photo`)VALUES(%s,%s,%s,%s)'
        data = (product_name,product_description,product_cost,filename)

        # executing the sql
        cursor.execute(sql,data)

        # saving changes to the database
        connection.commit()
        return jsonify({"Success":"Product added sucessfully"})


@app.route('/api/get_product_details',methods=['GET'])
def getProduct():

    # connection to database
    connection = pymysql.connect(host ='localhost',user= 'root',password='',database='Angel_oryx')

    # initialise connection
    cursor = connection.cursor(pymysql.cursors.DictCursor)

    # sql command
    sql = 'SELECT * FROM `product_details`'

    # excecution of the sql
    cursor.execute(sql)

    # retrieving products
    product = cursor.fetchall()

    # closing connection to database
    connection.close()


    return jsonify(product)

# Tuesday
# mpesa integration
# Mpesa Payment Route/Endpoint
import requests
import datetime
import base64
from requests.auth import HTTPBasicAuth

 
@app.route('/api/mpesa_payment', methods=['POST'])
def mpesa_payment():
    if request.method == 'POST':
       amount = request.form['amount']
    phone = request.form['phone']
    # GENERATING THE ACCESS TOKEN
    # create an account on safaricom daraja
    consumer_key = "GTWADFxIpUfDoNikNGqq1C3023evM6UH"
    consumer_secret = "amFbAoUByPV2rM5A"


    api_URL = "https://sandbox.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials"
     # AUTH URL
    r = requests.get(api_URL, auth=HTTPBasicAuth(consumer_key, consumer_secret))


    data = r.json()
    access_token = "Bearer" + ' ' + data['access_token']


    # GETTING THE PASSWORD
    timestamp = datetime.datetime.today().strftime('%Y%m%d%H%M%S')
    passkey = 'bfb279f9aa9bdbcf158e97dd71a467cd2e0c893059b10f78e6b72ada1ed2c919'
    business_short_code = "174379"
    data = business_short_code + passkey + timestamp
    encoded = base64.b64encode(data.encode())
    password = encoded.decode('utf-8')


    # BODY OR PAYLOAD
    payload = {
    "BusinessShortCode": "174379",
    "Password": "{}".format(password),
    "Timestamp": "{}".format(timestamp),
    "TransactionType": "CustomerPayBillOnline",
    "Amount": amount, # use 1 when testing
    "PartyA": phone, # change to your number
    "PartyB": "174379",
    "PhoneNumber": phone,
    "CallBackURL": "https://modcom.co.ke/api/confirmation.php",
    "AccountReference": "account",
    "TransactionDesc": "account"
    }


    # POPULAING THE HTTP HEADER
    headers = {
    "Authorization": access_token,
    "Content-Type": "application/json"
    }


    url = "https://sandbox.safaricom.co.ke/mpesa/stkpush/v1/processrequest" # C2B URL



    response = requests.post(url, json=payload, headers=headers)
    print(response.text)


    return jsonify({"message": "Please Complete Payment in Your Phone and we will deliver in minutes"})













if __name__=='__main__':
    app.run(debug=True)
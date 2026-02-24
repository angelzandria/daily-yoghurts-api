# flask
from flask import *

# create flask app
app =  Flask(__name__)

@app.route('/api/home')
def home():
    return jsonify({"Message":"Welcome to the home api"})

@app.route('/api/services')
def services():
    return jsonify({"Message":"Wecome to our services API"})

@app.route('/api/products')
def products():
    return jsonify({"Message":"Welcome to products API"})

@app.route('/api/calc', methods=['POST'])
def calc():
    if request.method =='POST':
        num1 = request.form['num1']
        num2 = request.form['num2']
        
        answer = int(num1) + int(num2)
        return jsonify({"Answer":answer})
    
if __name__=='__main__':
    app.run(debug=True)

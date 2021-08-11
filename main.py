from flask import Flask

app = Flask(__name__)

@app.route('/woof')
def woof():
    return 'woof-woof!!'
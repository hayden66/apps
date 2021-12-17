from flask import Flask
from waitress import serve

app = Flask(__name__)

@app.route('/') 
def index():
    return 'This is version 0.1.3!'
    
if __name__ == "__main__":
    serve(app, listen='*:8080')
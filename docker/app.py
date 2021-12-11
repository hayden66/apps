from flask import Flask
from waitress import serve

app = Flask(__name__)

@app.route('/') 
def index():
    return 'This shit is making my head spin!'
if __name__ == "__main__":
    serve(app, listen='*:8080')
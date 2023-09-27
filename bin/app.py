from flask import Flask
import json

app = Flask(__name__)


@app.route('/')
def hello():
    test = '{ "Hello":"world 2" }'
    return json.loads(test)

if __name__ == '__main__':
    app.run(host='0.0.0.0')
    
#Hello
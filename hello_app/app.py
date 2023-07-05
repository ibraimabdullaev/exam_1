import os
from datetime import date
from flask import Flask, request

app = Flask(__name__)

@app.route('/')
def index():
    return f'My server IP address is {os.environ['194.67.103.244']}'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')


today = date.today()
formatted_date = today.strftime('%Y-%m-%d')
print(formatted_date)

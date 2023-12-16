from flask import Flask

app = Flask(__name__)

@app.route('/lesson1')
def lesson1():
    return "lesson 1  - create new page"


app.run(debug=True)

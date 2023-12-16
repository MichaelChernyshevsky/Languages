from flask import Flask

app = Flask(__name__)

@app.route('/')
def form():
    return ""

print("http://127.0.0.1:5000/")
app.run(debug=True)

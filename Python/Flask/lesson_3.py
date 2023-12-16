from flask import Flask,render_template

app = Flask(__name__)

@app.route('/lesson3')
def lesson3():
    return render_template("lessons/lesson_3.html")


app.run(debug=True)

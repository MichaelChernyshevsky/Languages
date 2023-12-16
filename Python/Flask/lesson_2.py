from flask import Flask,render_template

app = Flask(__name__)

@app.route('/lesson2')
def lesson2():
    return render_template("lessons/lesson_2.html")


app.run(debug=True)

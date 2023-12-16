from flask import Flask,render_template,url_for

app = Flask(__name__)

@app.route('/lesson4')
def lesson4():
    return render_template("lessons/lesson_4.html")


app.run(debug=True)

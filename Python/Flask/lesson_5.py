from flask import Flask,render_template,url_for

app = Flask(__name__)

@app.route('/lesson5')
def lesson5():
    return render_template("lessons/lesson_5.html")

app.run(debug=True)

from datetime import datetime
from flask import Flask,render_template,url_for,request,redirect
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///lessons.db'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
dataBase = SQLAlchemy(app)

class Article(dataBase.Model):
    id = dataBase.Column(dataBase.Integer,primary_key=True)
    title = dataBase.Column(dataBase.String(100),nullable=False)
    intro = dataBase.Column(dataBase.String(300),nullable=False)
    text = dataBase.Column(dataBase.Text,nullable=False)
    date = dataBase.Column(dataBase.DateTime,default=datetime.utcnow)

    # при выборе будет выдаваться объект и его id
    def __repr__(self):
        return '<Article %r>' % self.id

@app.route('/sql')
def sql():
    return render_template("sql/sql.html")



@app.route('/sql/post',  methods=['GET', 'POST'])
def sqlPost():
    if request.method =="POST":
        title = request.form['title']
        intro = request.form['intro']
        text = request.form['text']

        article = Article(
            title = title,
            intro = intro,
            text = text
        )

        try:
            dataBase.session.add(article)
            dataBase.session.commit()
            return "true"
        except:
            return "error"
    else:
        return render_template("sql/sqlPost.html")
@app.route('/sql/showInfo')
def sqlShowInfo():
    articles = Article.query.order_by(Article.date.desc()).all()
    return render_template("sql/sqlShowInfo.html",articles = articles)
@app.route('/sql/InfoElement/<int:id>')
def sqlInfoElement(id):
    postInfo = Article.query.get(id)
    return render_template("sql/sqlInfoElement.html",postInfo = postInfo)

@app.route('/sql/InfoElement/<int:id>/delete')
def sqlDelete(id):
    element = Article.query.get_or_404(id)
    try:
        dataBase.session.delete(element)
        dataBase.session.commit()
        return redirect('/sql/showInfo')
        # return "success"
    except:
        return "Delete error"



@app.route('/sql/InfoElement/<int:id>/update',methods=['GET', 'POST'])
def sqlUpdate(id):
     article = Article.query.get(id)
     if request.method =="POST":
        article.title = request.form['title']
        article.intro = request.form['intro']
        article.text = request.form['text']
        try:
            dataBase.session.commit()
            return "true"
        except:
            return "error"
     else:
        return render_template("sql/sqlUpdate.html",article = article)

    # postInfo = Article.query.get(id)
    # return render_template("sql/sqlInfoElement.html",postInfo = postInfo)

if __name__ == "__main__":
    print('http://127.0.0.1:5001/sql/post')
    print('http://127.0.0.1:5001/sql/showInfo')
    print('http://127.0.0.1:5001/sql/InfoElement/1')
    print('http://127.0.0.1:5001/sql/InfoElement/1/update')
    print('http://127.0.0.1:5001/sql/InfoElement/1/delete')

    with app.app_context():
        dataBase.create_all()
    app.run(debug=True,port=5001)

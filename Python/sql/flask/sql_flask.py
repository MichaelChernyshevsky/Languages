from flask import Flask 
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy_utc import UtcDateTime,utcnow
from psycopg2 import *

def create_app():
    app = Flask(__name__)
    app.config['SQLALCHEMY_DATABASE_URI'] = "postgresql://postgres:postgres@localhost/mydb"
    app.app_context().push()
    return app

app =  create_app()
db = SQLAlchemy(app)

class Counter(db.Model):
    id = db.Column('id',db.Integer,primary_key = True)
    count = db.Column('count',db.Integer)

    def __init__(self,id = 90,count = 0):
        self.id = id
        self.count = count

class MyTable(db.Model):
    __tablename__  = "counter"
    __table_args__ = {'extend_existing': True}
   

    id = db.Column('id',db.Integer,primary_key = True)
    count = db.Column('count',db.Integer)

    def __init__(self,id = 100,count = 100):
        self.id = id
        self.count = count

    def getCount(self,id):
        data = MyTable.query.filter_by(id = id).firts()
        print(data.__dict__)
        print(dir(data))





from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy
from app import app
from data.basic import Basic
from servers.stat.data.types.mounthly import Mounthly
from data.anually import Anually







# @app.get('/read')
# def get():
#     return jsonify(SomeClass.get());

@app.get('/read/basic')
def getBasic():
    return jsonify(Basic.get());

@app.get('/read/monthly')
def getMounthly():
    return jsonify(Mounthly.get());

@app.get('/read/anually')
def getAnually():
    return jsonify(Anually.get());



# @app.get('/read')
# def get():
#     return jsonify(SomeClass.get());

@app.get('/read/basic/count')
def getBasicCount():
    return jsonify(Basic.getCount());

@app.get('/read/monthly/count')
def getMounthlyCount():
    return jsonify(Mounthly.getCount());

@app.get('/read/anually/count')
def getAnuallyCount():
    return jsonify(Anually.getCount());


# @app.post('/add/user')
# def post():
    
#     return  SomeClass.post(
#         request.json["title"]
#     );


@app.post('/add/user/basic')
def postBasic():
    return  jsonify(Basic.add());

@app.post('/add/user/monthly')
def postMounthly():
    return  jsonify(Mounthly.add());

@app.post('/add/user/anually')
def postAnually():
    return  jsonify(Anually.add());

# @app.delete('/delete/<int:id>')
# def delete(id):
#     SomeClass.delete(id=id)
#     return jsonify( SomeClass.get());


if __name__ == "__main__":
    app.run(debug=True,port=5001)

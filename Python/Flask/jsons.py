from flask import Flask,jsonify,request

app = Flask(__name__)

example = [
        {"number":'first'},
        {"number":'second'},
        {"number":'third'},
    ]

@app.route('/json/read')
def jsonRead():
    return jsonify(example)

@app.route('/json/read/<string:element>')
def jsonReadNumber(element):
    numbers = [
        number
        for number in example
        if number["number"] == element
    ]
    return jsonify({'number' : numbers[0]})

@app.route('/json/post',methods=['POST'])
def jsonPost():
    element = {"number": request.json['number']}
    example.append(element)
    return jsonify({'examples':example})

@app.route('/json/put/<string:element>',methods=['PUT'])
def jsonPut(element):
    numbers = [
        number
        for number in example
        if number['number'] == element
    ]
    numbers[0]['number'] = request.json['number']
    return jsonify({'number':numbers[0]})

@app.route('/json/delete/<string:element>',methods=['DELETE'])
def jsonDelete(element):
    numbers = [
        number
        for number in example
        if number['number'] == element
    ]
    example.remove(numbers[0])
    return jsonify({'examples':example})




if __name__ == "__main__":
    print("http://127.0.0.1:5000/json/read")
    print("http://127.0.0.1:5000/json/read/first")
    print("http://127.0.0.1:5000/json/post")
    print("http://127.0.0.1:5000/json/put/")
    print("http://127.0.0.1:5000/json/delete/")
    app.run(debug=True)

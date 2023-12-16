from sql_flask import MyTable


counter = MyTable.query.filter_by(id=1).first()

print("+"*1000)
print(counter.__dict__['count'])
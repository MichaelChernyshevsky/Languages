#связывание с классом 
from sqlalchemy import create_engine, Table,MetaData
from data.link import Data
from sqlalchemy.orm import mapper,relationship,sessionmaker

engine = create_engine(Data.getLink(),echo=True)
meta = MetaData(engine)

orders = Table('example_order',meta,autiload=True)
counter = Table('example_counter',meta,autiload=True)

class Counter():
    def __init__(self,counter,id):
        self.counter = counter
        self.id = id

class Order():
    def __init__(self,message,id):
        self.order = message
        self.id = id
        
mapper(Counter,counter)
mapper(Order,orders)

order_json = {
    "connect":"somemail@dada.ru",
    "comment":"done"
}
new_order = Order(order_json,2)

DBSession = sessionmaker(bind=engine)
session = DBSession()
session.add(new_order)
session.commit()

for row in session.query(Order).filter_by(id==1).one():
    print(row)

delete_data = session.query(Order).filter_by(id==1).one()
if delete_data:
    session.delete(delete_data)
    session.commit()



from sqlalchemy import create_engine,select, Table,Column,Integer,String,ForeignKey,MetaData
from sqlalchemy.sql import select,and_
from sqlalchemy.orm import mapper,sessionmaker,relationship
import sqlalchemy as db




#create
###########################################################################################
meta = MetaData()
counter = Table("Counter",meta,Column('Counter',Integer),Column('ID',Integer,primary_key=True))
orders = Table("Orders",meta,Column('Contact',String(100)),Column('Comment',String(100)),Column('ID',Integer,primary_key=True))
engine = db.create_engine("postgres:///data/GarandFond.db")
conn = engine.connect()


    ##################################################################################
# #добавление пользователя
add_order = orders.insert().values(Contact="+7921029213",Comment="some info",ID = 1)
conn.execute(add_order)

getOrders = counter.select().where(orders)
result = conn.execute(getOrders)
for order in result:
    print(order)

getCounter = counter.select().where(counter)
result = conn.execute(getCounter)


# increseCounter = counter.update().where(counter.c.Counter)
# result = conn.execute(increseCounter)


# decreaseCounter =
# result = conn.execute(decreaseCounter)

# deleteOrder =
# result = conn.execute(deleteOrder)


# using database after create
# без связывания
###########################################################################################
# engine = create_engine("screeen",echo=True)
# meta = MetaData(engine)
# counter = Table("Counter",meta,autoload=True)
# orders = Table("Orders",meta,autoload=True)
# conn = engine.connect()
    ##################################################################################
#delete
# delete_order = orders.delete().where(orders.c.Id == 1)
# conn.execute(delete_order)
#update
# current_count = counter.select().where(counter.c.ID==1)
# increase = counter.update().where(counter.c.ID==1).values(Counter=current_count+1)
# conn.execute(increase)

# using database after create
# с0 связываниум
###########################################################################################
# engine = create_engine("screeen",echo=True)
# meta = MetaData(engine)
# counter = Table("Counter",meta,autoload=True)
# orders = Table("Orders",meta,autoload=True)
# conn = engine.connect()
# # classes
# class Counter():
#     def __init__(self,counter):
#         self.counter = counter
#         self.id = 1
#
#
# class Order():
#     def __init__(self,id,contact,comment):
#         self.id = id
#         self.contact = contact
#         self.comment = comment
# mapper(Order,orders)
# mapper(Counter,counter)
#     ##################################################################################
# new_order = Order(2,"+782913131312","xyeta")
#
# DBSession = sessionmaker(bind = engine)
# session = DBSession()
# session.add(new_order)
# session.commit()
#
# for count in counter.query(Counter):
#     print (count)

# for row in session.query(Book).filter(Book.price>1000):
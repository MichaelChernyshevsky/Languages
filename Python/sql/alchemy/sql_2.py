# Meta

from sqlalchemy import create_engine,select, Table,Column,Integer,String,ForeignKey,MetaData
from sqlalchemy.sql import select,and_
from sqlalchemy.orm import mapper,sessionmaker,relationship
import sqlalchemy as db

from data.link import Data

#create

meta = MetaData()

counter = Table(
    "example_counter",meta,
    Column('id',Integer,primary_key=True),
    Column('counter',Integer),

    )
orders = Table(
    "example_order",meta,
    Column('id',Integer,primary_key=True),
    Column('contact',String(100)),
    Column('comment',String(100)),
    )

# work with data

def getColumnWithPK():
    print('-'*100)
    print(counter.primary_key)
    print('-'*100)

def getColumn():
    print('-'*100)
    print(counter.primary_key)
    print('-'*100)

def getAll():
    print('-'*100)
    print(counter.select())
    print('-'*100)


getColumnWithPK()
getColumn()
getAll()

#connection

engine = create_engine(Data.getLink(),echo=True)
meta.create_all(engine) 

conn = engine.connect()

# work with data

def insert():
    print('-'*100+"insert")
    conn.execute(
        orders.insert().values(
        contact="+918273112312",
        id = 3,
        comment = "xyeta"),
    )
    print('-'*100)

def getData():
    data = counter.select()
    result = conn.execute(data)
    
    for row in result:
        print('-'*100)
        print(row)

insert()
getData()
# def getOnId():
#     s = select([counter,orders]).where(counter.c.id == orders.c.id)
#     result = conn.execute(s)
#     for row in result:
#         print(row)





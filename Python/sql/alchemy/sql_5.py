# декларативный - связывание сразу 
from sqlalchemy import create_engine,Integer,JSON,Column
from sqlalchemy.ext.declarative import declarative_base

from data.link import Data
from sqlalchemy.orm import mapper,relationship,sessionmaker

engine = create_engine(Data.getLink(),echo=True)
base = declarative_base()

class Counter(base):
    __tablename__ = "example_counter"

    id = Column(Integer,primary_key=True)
    counter =  Column('counter',Integer)
   

class Order(base):
    __tablename__ = "example_order"
    
    id = Column('id',Integer,primary_key=True),
    message = Column('message',JSON),
    
   
base.metadata.create_all(engine)
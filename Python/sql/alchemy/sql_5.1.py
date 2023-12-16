from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from sql_5 import base,Order,Counter
from data.link import Data

engine = create_engine(Data.getLink(),echo=True)

session = sessionmaker(bind = engine)
s = session()

order_one = Order(id = 1, message = {} )
s.add(order_one)
s.commit()

s.add_all([
    Order(id = 2, message = {} ),
    Order(id = 3, message = {} ),
    Order(id = 4, message = {} )
])
s.commit()
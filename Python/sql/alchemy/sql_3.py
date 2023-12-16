# без связывания
from sqlalchemy import create_engine, Table,MetaData
from data.link import Data


engine = create_engine(Data.getLink(),echo=True)
meta = MetaData(engine)


orders = Table('example_order',meta,autiload=True)
counter = Table('example_counter',meta,autiload=True)

conn = engine.connect()

delete = orders.delete().where(orders.c.id == 1)
conn.execute(delete)

update = counter.update().where(counter.c.id == 1).values(counter = 2)
conn.execute(update)


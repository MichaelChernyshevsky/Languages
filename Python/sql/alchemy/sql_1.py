from sqlalchemy.orm import mapper,sessionmaker,relationship
from sqlalchemy import create_engine, text
from data.link import Data

engine = create_engine(Data.getLink())
with engine.connect() as connection:
    result = connection.execute(text("SELECT id, name FROM test;"))
    print(result.scalar())
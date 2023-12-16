from app import db
from model.type_model import SubscribeType


class Anually(SubscribeType,db.Model):

    __tablename__ = "anually"
    __table_args__ = {"extend_existing": True}
    id = db.Column("id", db.Integer, primary_key=True)
    date = db.Column("date", db.String(100))

    def __init__(self,date:str):
        self.date = date
    
    @staticmethod
    def get():
        json_events = []
        events = Anually.query.all()
        for event in events:
            form = {
                    "id" : event.__dict__['id'],
                    "date" : event.__dict__['date'],
                } 
            json_events.append(form)
        return json_events
    
    @staticmethod
    def getCount():
        form = {
            "count" : Anually.query.count()
        }
        return form  
      
        
    @staticmethod
    def add()->int:
        date = '20-10-2023'
        note = Anually(
                date=date,
                
            )
        db.session.add(note)
        db.session.commit()
          

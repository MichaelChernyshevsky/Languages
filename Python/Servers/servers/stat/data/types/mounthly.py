from app import db
from model.type_model import SubscribeType

class Mounthly(SubscribeType,db.Model):

    __tablename__ = "mounthly"
    __table_args__ = {"extend_existing": True}
    id = db.Column("id", db.Integer, primary_key=True)
    date = db.Column("date", db.String(100))


    def __init__(self,date:str):
        self.date = date

    @staticmethod
    def get():
            json_events = []
            events = Mounthly.query.all()
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
            "count" : Mounthly.query.count()
        }
        return form  
        
    @staticmethod
    def add()->int:
        date = '20-10-2023'
        note = Mounthly(
                date=date,
            )
        db.session.add(note)
        db.session.commit()
       

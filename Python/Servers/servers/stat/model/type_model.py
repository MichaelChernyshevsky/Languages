class SubscribeType:

    # __tablename__ = ""
    # __table_args__ = {"extend_existing": True}
    # id = db.Column("id", db.Integer, primary_key=True)
    # date = db.Column("date", db.String(100))
 

    def __init__(self,date:str):
        self.date = date

    @staticmethod
    def get():
        raise NotImplementedError
    
    @staticmethod
    def getCount():
        raise NotImplementedError

    @staticmethod
    def add()->int:
        raise NotImplementedError
    

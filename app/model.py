from app import db
from datetime import datetime


class SinglePageTable(db.Model):

    id = db.Column(db.Integer(), primary_key=True)
    title = db.Column(db.String(120))
    volume = db.Column(db.Integer())
    distance = db.Column(db.Float())
    date = db.Column(db.DateTime(), default=datetime.now)

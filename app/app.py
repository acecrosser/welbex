from flask import Flask
from confg import Configuration
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate

app = Flask(__name__)
app.config.from_object(Configuration)
db = SQLAlchemy(app)
migrate = Migrate(app, db)

from model import SinglePageTable


@app.route('/')
def index_page():
    return 'Hello beach'

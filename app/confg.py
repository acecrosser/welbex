import os
from py_dotenv import read_dotenv

path = os.path.abspath('.' + 'env')
read_dotenv(path)

DB_NAME = str(os.getenv('DBNAME'))
USER = str(os.getenv('USER'))
PASSWD = str(os.getenv('PASSWD'))

class Configuration(object):
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    SQLALCHEMY_DATABASE_URI = str(os.getenv('DATABASE_URI'))
import psycopg2 as ps
from .confg import DB_NAME_0, USER, PASSWD

connect = ps.connect(dbname=DB_NAME_0,
                     user=USER,
                     password=PASSWD,
                     host='postgres', port='5432')

cursor = connect.cursor()


def make_data_base():

    cursor.execute('CREATE DATABASE "db_welbex"')
    connect.commit()
    print('База успешно создана')


if __name__ == '__main__':
    make_data_base()

import psycopg2 as ps
import confg

connect = ps.connect(dbname=confg.DB_NAME,
                     user=confg.USER,
                     password=confg.PASSWD,
                     host='localhost', port='5432')

cursor = connect.cursor()
connect.autocommit = True

def make_data_base():

    cursor.execute('CREATE DATABASE "db_welbex"')
    connect.commit()
    print('База успешно создана')


if __name__ == '__main__':
    make_data_base()

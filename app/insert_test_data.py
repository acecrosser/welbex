import psycopg2 as ps
from .confg import DB_NAME, USER, PASSWD

connect = ps.connect(dbname=DB_NAME,
                     user=USER,
                     password=PASSWD,
                     host='localhost', port='5432')

cursor = connect.cursor()

def insert_test_data():

    with open('db_insert', 'r') as file:
        for line in file:
            cursor.execute(f"{line}")
        print('Данные успешно внесены')

if __name__ == '__main__':
    insert_test_data()
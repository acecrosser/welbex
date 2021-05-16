from make_db import cursor

def insert_test_data():

    with open('db_insert', 'r') as file:
        for line in file:
            cursor.execute(f"{line}")
        print('Данные успешно внесены')

if __name__ == '__main__':
    insert_test_data()
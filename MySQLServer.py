import mysql.connector
from mysql.connector import Error

# Connect to sql server
def create_db():  
    connection = None
    mycursor = None
    try:  
        # Create and return a database connection.
        connection = mysql.connector.connect(
        host="localhost",
        user="root",
        password=""
    )
    #    if there is a connection then create a cursor
        if connection.is_connected():
           mycursor = connection.cursor()
           create_db_query = "CREATE DATABASE IF NOT EXISTS alx_book_storec"
           mycursor.execute(create_db_query)
           print("Database 'alx_book_storeb' created successfully!")

    except Error as e:
        print(f"Error connecting to MySQL {e}")

    finally:
        if connection.is_connected():
            mycursor.close()
            connection.close()
            # print("MySQL connection closed.")  # Optional

if __name__ == "__main__":
    create_db()

"""Test script for museumdb connection"""

import mysql.connector
from config import DB_CONFIG

def test_connection():
    try:
        # Connect to the database
        conn = mysql.connector.connect(**DB_CONFIG)
        cursor = conn.cursor()

        # Test query
        cursor.execute("SHOW TABLES;")
        tables = cursor.fetchall()

        # Output tables
        print("Connected to the database successfully!")
        print("Tables in the database:")
        for table in tables:
            print(f"- {table[0]}")

    except mysql.connector.Error as err:
        print(f"Error: {err}")
    finally:
        if conn.is_connected():
            cursor.close()
            conn.close()

if __name__ == "__main__":
    test_connection()

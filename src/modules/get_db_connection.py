import sqlite3


def get_db_connection():
    conn = sqlite3.connect('cereal.db')
    conn.row_factory = sqlite3.Row
    cursor = conn.cursor()
    return (conn, cursor)
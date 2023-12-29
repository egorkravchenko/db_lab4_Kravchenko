import psycopg2


class PostgresDB:
    def __init__(self):
        self.dbname = "db_lab3_Kravchenko"   
        self.user = "postgres"          
        self.password = "13032002"  
        self.host = "localhost"
        self.port = 5432
        self.connection = None
        self.cursor = None

    def connect(self):
        try:
            self.connection = psycopg2.connect(
                dbname=self.dbname,
                user=self.user,
                password=self.password,
                host=self.host,
                port=self.port
            )
            self.cursor = self.connection.cursor()
        except Exception as e:
            print(f"Error connecting to the database: {e}")

    def execute_query(self, query, params=None):
        try:
            self.cursor.execute(query, params)
        except Exception as e:
            print(f"Error executing query: {e}")

    def fetch_all(self):
        return self.cursor.fetchall()

    def close_connection(self):
        if self.connection:
            self.cursor.close()
            self.connection.close()


class StatisticsProvider:
    def __init__(self):
        self.database = PostgresDB()

    def __extract_result(self, query):
        self.database.connect()
        self.database.execute_query(query)
        result = self.database.fetch_all()
        self.database.close_connection()

        return result

    def get_shows_rating(self):
        query = """
            SELECT title, rating
            FROM show
            ORDER BY rating DESC
            LIMIT 5;
        """

        return self.__extract_result(query)

    def get_show_count_for_genres(self):
        query = """
            SELECT genre_name, COUNT(*) as count
            FROM genre g
            JOIN show_genre sg ON g.genre_id = sg.genre_id
            GROUP BY genre_name;
        """

        return self.__extract_result(query)

    def get_actor_count_for_show(self):
        query = """
            SELECT s.title, COUNT(sa.actor_id) as actor_count
            FROM show s
            LEFT JOIN show_actor sa ON s.show_id = sa.show_id
            GROUP BY s.title;
        """

        return self.__extract_result(query)


def main():
    statistics_provider = StatisticsProvider()
    print(statistics_provider.get_shows_rating())
    print(statistics_provider.get_show_count_for_genres())
    print(statistics_provider.get_actor_count_for_show())


if __name__ == "__main__":
    main()

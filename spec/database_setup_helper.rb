require 'pg'

def clean_database
  conn = PG.connect(dbname: 'database_manager_test')
  conn.exec("TRUNCATE bookmarks")
end

def build_database
    conn = PG.connect(dbname: 'database_manager_test')
    comn.exec("INSERT INTO bookmarks VALUES(DEFAULT, 'http://www.bbc.co.uk')")
    comn.exec("INSERT INTO bookmarks VALUES(DEFAULT, 'http://www.twitter.com')")
    comn.exec("INSERT INTO bookmarks VALUES(DEFAULT, 'http://www.google.com')")
end

require 'pg'

def clean_database
  conn = PG.connect(dbname: 'bookmark_manager_test')
  conn.exec("TRUNCATE bookmarks")
end

def build_database
    conn = PG.connect(dbname: 'bookmark_manager_test')
    conn.exec("INSERT INTO bookmarks VALUES(DEFAULT, 'http://www.bbc.co.uk')")
    conn.exec("INSERT INTO bookmarks VALUES(DEFAULT, 'http://www.twitter.com')")
    conn.exec("INSERT INTO bookmarks VALUES(DEFAULT, 'http://www.google.com')")
end

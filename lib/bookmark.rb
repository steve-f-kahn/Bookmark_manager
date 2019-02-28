require 'pg'

class Bookmark

  def self.connect
    if ENV["ENVIROMENT"] == "test"
      connection = PG.connect(dbname: "bookmark_manager_test")
    else
      connection = PG.connect(dbname: "bookmark_manager")
    end
  end

  def self.all
    result = Bookmark.connect.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url'] }
  end

  def self.titles
    result = Bookmark.connect.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['title'] }
  end

  def self.select(title)
    result = Bookmark.connect.exec("SELECT url FROM bookmarks WHERE title = '#{title}';")

    fail "Bookmark not found" if result.ntuples == 0
    output = result[0]['url']
  end

  def self.remove(title)
    Bookmark.connect.exec("DELETE FROM bookmarks WHERE title = '#{title}';")
  end
  def initialize(url, title)
    result = Bookmark.connect.exec("INSERT INTO bookmarks VALUES(DEFAULT, '#{url}', '#{title}')")
  end

end

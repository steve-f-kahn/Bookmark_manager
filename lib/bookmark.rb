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

  def initialize(url, title)
    result = Bookmark.connect.exec("INSERT INTO bookmarks VALUES(DEFAULT, '#{url}', '#{title}')")
  end

end

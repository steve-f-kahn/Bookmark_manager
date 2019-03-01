require 'pg'

class Bookmark

  def self.all
    result = DatabaseConnection.query("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url'] }
  end

  def self.titles
    result = DatabaseConnection.query("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['title'] }
  end

  def self.select(title)
    result = DatabaseConnection.query("SELECT url FROM bookmarks WHERE title = '#{title}';")

    fail "Bookmark not found" if result.ntuples == 0
    output = result[0]['url']
  end

  def self.remove(title)
    DatabaseConnection.query("DELETE FROM bookmarks WHERE title = '#{title}';")
  end

  def self.update(new_url, new_title, old_title)
    DatabaseConnection.query("UPDATE bookmarks SET url = '#{new_url}', title = '#{new_title}' WHERE title = '#{old_title}';")
  end
  def initialize(url, title)
    result = DatabaseConnection.query("INSERT INTO bookmarks VALUES(DEFAULT, '#{url}', '#{title}')")
  end

end

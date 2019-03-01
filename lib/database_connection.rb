require 'pg'

class DatabaseConnection
  def self.setup(name)
    PG.connect(dbname: name)
  end
end

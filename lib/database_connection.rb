require 'pg'

class DatabaseConnection
  def self.setup(name)
    @connection = PG.connect(dbname: name)
  end

  def self.query(query_string)
    @connection.exec(query_string)
  end

end

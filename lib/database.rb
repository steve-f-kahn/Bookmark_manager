class Database

  def self.name
    if ENV["ENVIROMENT"] == "test"
      @name = "bookmark_manager_test"
    else
      @name ="bookmark_manager"
    end
  end

end

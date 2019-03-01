require "database_connection"
describe DatabaseConnection do
  describe "#setup" do
    it "Takes the databse name and sets up a connection to it" do
      a = DatabaseConnection.setup("bookmark_manager_test")
      expect(a.db).to eq "bookmark_manager_test"
    end
  end
end

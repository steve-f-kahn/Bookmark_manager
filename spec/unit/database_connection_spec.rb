require "database_connection"
describe DatabaseConnection do
  describe "#setup" do
    it "Takes the databse name and sets up a connection to it" do
      a = DatabaseConnection.setup("bookmark_manager_test")
      expect(a.db).to eq "bookmark_manager_test"
    end
  end

  describe "#querry" do
    context "The query method executes the query in our databse" do
      before(:each) do
        DatabaseConnection.setup("bookmark_manager_test")
      end

      it "the SELECT query is checked" do
        query_string = "SELECT * FROM bookmarks WHERE title='BBC'"
        result = DatabaseConnection.query(query_string)
        expect(result[0]["title"]).to eq "BBC"
      end

      it "the insert query is checked" do
        query_string = "INSERT INTO bookmarks (title,url) VALUES ('Amazon','amazon.com') RETURNING title;"
        result = DatabaseConnection.query(query_string)
        expect(result[0]["title"]).to eq "Amazon"
      end
    end
  end
end

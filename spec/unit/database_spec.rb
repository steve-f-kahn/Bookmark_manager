require 'database'
describe Database do
  it "Name is a test database" do
    expect(Database.name).to eq "bookmark_manager_test"
  end

  it "Its name is a production database" do
    ENV['ENVIROMENT'] = 'production'
    expect(Database.name).to eq "bookmark_manager"
    ENV['ENVIROMENT'] = 'test'
  end

end

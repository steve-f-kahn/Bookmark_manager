require 'bookmark'

describe Bookmark do

  it "Returns a list of all bookmarks with .all" do
    bookmark = Bookmark.new
    expect(bookmark.all).to eq ["www.bbc.co.uk", "www.github.co.uk"]
  end
end

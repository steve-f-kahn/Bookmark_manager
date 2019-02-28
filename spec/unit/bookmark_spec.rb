require 'bookmark'

describe Bookmark do

  it "Returns a list of all bookmarks with .all" do
    bookmarks = Bookmark.all

    expect(bookmarks).to include "http://www.bbc.co.uk"
    expect(bookmarks).to include "http://www.twitter.com"
    expect(bookmarks).to include "http://www.google.com"
  end

  it "Adds a bookmark to the test database when created" do
    Bookmark.new('twitch.tv', 'Twitch')
    bookmarks = Bookmark.all

    expect(bookmarks).to include "twitch.tv"
  end
end

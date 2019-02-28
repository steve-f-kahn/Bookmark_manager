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

  it "Returns a url of the title" do
    expect(Bookmark.select('BBC')).to eq 'http://www.bbc.co.uk'
  end

  it "Removes a bookmak based on the title" do
    Bookmark.remove('BBC')
    expect{Bookmark.select('BBC')}.to raise_error "Bookmark not found"
  end
end

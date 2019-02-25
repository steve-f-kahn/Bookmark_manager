require 'bookmark'

descirbe Bookmark do
  let(bbc){double "www.bbc.co.uk"}
  let(github){double "www.github.co.uk"}
  it "Returns a list of all bookmarks with .all" do
    bookmark = Boomark.new
    expect(bookmark.all).to eq [bbc, github]
  end
end

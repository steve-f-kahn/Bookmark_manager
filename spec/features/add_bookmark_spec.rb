feature "Add a bookmark" do
  scenario "Add twitch.tv to my list of bookmarks" do
    visit '/'
    click_button("Add Bookmark")
    fill_in("url", with: "twitch.tv")
    fill_in("title", with: "Twitch")
    click_button("Add")
    expect(page).to have_content "Twitch"
  end
end

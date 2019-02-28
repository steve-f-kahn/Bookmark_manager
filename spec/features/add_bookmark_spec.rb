feature "Add a bookamerk" do
  scenario "Add twitch.tv to my list of bookmarks" do
    visit '/'
    click_button("Add Bookmark")
    fill_in("url", with: "twitch.tv")
    click_button("Add")
    click_button("list")
    expect(page).to have_content "twitch.tv"
  end
end

feature "List bookmarks" do
  scenario "Clicks a button and shows a list of bookmarks" do
    visit '/'
    click_button("list")
    expect(page).to have_content("A list of bookmarks:")
  end
end

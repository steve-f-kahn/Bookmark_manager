feature "List bookmarks" do
  scenario "Click on a bookmark of Google and be shown 'http://www.google.com'" do
    visit '/'
    click_button("Google")
    expect(page).to have_content('http://www.google.com')
  end
end

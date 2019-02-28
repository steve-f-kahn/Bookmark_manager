feature "List bookmarks" do
  scenario "Has 3 default titles on Homepage" do
    visit '/'
    expect(page).to have_content("BBC")
    expect(page).to have_content("Twitter")
    expect(page).to have_content("Google")
  end
end

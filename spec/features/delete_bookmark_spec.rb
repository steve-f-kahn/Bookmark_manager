feature "Delete a bookmark" do
  scenario "Delete google from my bookmarks" do
    visit '/'
    click_button("Remove")
    click_button("Google")
    expect{ find_button("Google")}.to raise_error(Capybara::ElementNotFound)
  end
end

feature "Update a bookmark" do
  scenario "We can update BBC to BBC FOOD" do
    visit '/'
    click_button("Update")
    click_button("BBC")
    fill_in("url", with: 'http://www.bbc.co.uk/food')
    fill_in("title", with: 'BBC Food')
    click_button("Update")
    expect(page).to have_selector("input[type=submit][value='BBC Food']")
    click_button("BBC Food")
    expect(page).to have_content('http://www.bbc.co.uk/food')
  end
end

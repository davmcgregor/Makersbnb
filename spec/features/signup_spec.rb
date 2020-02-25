feature 'adding a new user' do
  scenario 'a new user signs up' do
    visit '/users/new'
    fill_in('username', with: 'testusername123')
    fill_in('email', with: 'test@example.com')
    fill_in('password', with: 'password123')
    click_button('Submit')

    expect(page).to have_content 'Welcome to MakersBnB, testusername123'
  end
end

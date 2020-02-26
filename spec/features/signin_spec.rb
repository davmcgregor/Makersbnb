feature 'signing in' do
  scenario 'user signs in' do
    User.create(username: 'testusername123', email: 'email', password: 'password123')

    visit '/'

    click_button 'Sign in'
    fill_in('username', with: 'testusername123')
    fill_in('password', with: 'password123')
    click_button('Submit')

    expect(current_path).to eq '/spaces'
    expect(page).to have_content 'Welcome to MakersBnB, testusername123'
  end
end

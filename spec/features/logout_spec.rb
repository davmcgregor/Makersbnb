feature 'signing in' do
  scenario 'user signs in' do
    User.create(username: 'testusername123', email: 'email', password: 'password123')

    visit '/'
    sign_in

    click_button('Log Out')

    expect(current_path).to eq '/'
    expect(page).not_to have_content 'testusername123'
    expect(page).to have_selector(:link_or_button, 'Sign Up')
    expect(page).to have_selector(:link_or_button, 'Sign In')
  end
end

def sign_in
  click_button 'Sign In'
  fill_in('username', with: 'testusername123')
  fill_in('password', with: 'password123')
  click_button('Submit')
end

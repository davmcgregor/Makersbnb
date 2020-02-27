def sign_in
  click_button 'Sign in'
  fill_in('username', with: 'testusername123')
  fill_in('password', with: 'password123')
  click_button('Submit')
end

def sign_up
  click_button 'Sign Up'
  fill_in('username', with: 'testusername123')
  fill_in('email', with: 'testusername123@gmail.com')
  fill_in('password', with: 'password123')
  click_button('Submit')
end


def sign_in
  click_button 'Sign In'
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

def add_space
  visit '/spaces/new'
  fill_in :name, with: 'Madonnas cottage'
  fill_in :description, with: 'Beautiful cottage in the hills'
  fill_in :price, with: 1000
  click_on 'Add space'
end

def view_space
  visit '/'
  sign_up
  add_space
  click_on 'More Details'
end

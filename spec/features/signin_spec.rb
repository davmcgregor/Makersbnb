feature 'signing in' do
  scenario 'user signs in' do
    User.create(username: 'testusername123', email: 'email', password: 'password123')

    visit '/'
    sign_in

    expect(current_path).to eq '/spaces'
    expect(page).to have_content 'testusername123'
  end

  scenario 'username does not exist' do
    User.create(username: 'testusername', email: 'email', password: 'password123')

    visit '/'
    sign_in

    expect(current_path).to eq '/sessions/new'
    expect(page).to have_content 'Please check your email or password'
  end

  scenario 'password does not exist' do
    User.create(username: 'testusername123', email: 'email', password: 'p')

    visit '/'
    sign_in

    expect(current_path).to eq '/sessions/new'
    expect(page).to have_content 'Please check your email or password'
  end
end

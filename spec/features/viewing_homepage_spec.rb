feature 'viewing homepage' do

  scenario 'user sees homepage' do
    visit '/spaces'
    expect(page).to have_content 'Tortoise Tourism'
  end

  scenario 'user has option to sign up if not logged in' do
    visit '/spaces'
    expect(page).to have_content 'Sign Up'
  end

end
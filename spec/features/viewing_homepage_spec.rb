feature 'viewing homepage' do

  scenario 'user has option to sign up' do
    visit '/'
    expect(page).to have_content 'Sign Up'
  end

end
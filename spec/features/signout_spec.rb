feature 'signing out' do
  scenario 'user signs out' do
    visit '/'
    sign_up
    click_on('Sign Out')
    expect(page).to have_content 'Signed Out'
  end
end

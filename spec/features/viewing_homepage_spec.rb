feature 'viewing homepage' do

  scenario 'user sees homepage if not logged in' do
    visit '/'
    expect(page).to have_selector(:link_or_button, 'Sign Up')
    expect(page).to have_selector(:link_or_button, 'Sign in')
  end

  scenario 'user is redirected to spaces if logged in' do
    visit '/'
    sign_up
    visit '/'
    expect(page).to have_content("Spaces")
  end
end
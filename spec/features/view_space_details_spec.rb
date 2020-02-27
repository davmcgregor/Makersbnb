feature 'add a booking' do
  scenario 'user can book a space' do
    visit '/'
    sign_up
    add_space

    click_on 'More Details'

    expect(page).to have_selector(:link_or_button, 'Book')
  end
end

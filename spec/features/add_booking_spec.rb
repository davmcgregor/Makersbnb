feature 'add a booking' do
  scenario 'user can book a space' do
    visit '/'
  sign_up
  add_space
  click_on 'More Details'
    view_space
    click_on 'Book'
    expect(page).to have_content 'Booking Requested'
  end
end

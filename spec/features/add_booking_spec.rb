feature 'add a booking' do
  scenario 'user can book a space' do
    view_space

    click_on 'Book'

    expect(page).to have_content 'Booking Requested'
  end
end

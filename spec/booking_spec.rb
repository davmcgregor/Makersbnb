describe Booking do
  context 'a new booking is created' do
    let(:test_user) { User.create({ username: 'testusername', email: 'test@email.com', password: 'testpassword' }) }
    let(:test_space) { Space.create({ name:'testname', description: 'test description', price: 1, date_start: Time.now, date_end: Time.now }) }

    it 'creates a booking' do
      booking = Booking.create(date_start: Time.now, date_end: Time.now, users_id: test_user.id, spaces_id: test_space.id)
      expect(booking).to be_a Booking
    end
  end
end

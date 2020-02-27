describe User do
  it 'creates a user' do
    user = User.create(username: "username", email: "email", password: "password")
    expect(user).to be_a User
  end
end

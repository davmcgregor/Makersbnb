describe Space do
  it "creates a space" do
   space = Space.create(name: "name", description: "description", price: "price", date_start: Time.now, date_end: Time.now)
    expect(space).to be_a Space
  end
  
  it'retreives a list of spaces' do
    Space.create(name: "name", description: "description", price: "price", date_start: Time.now, date_end: Time.now)
    Space.create(name: "name", description: "description", price: "price", date_start: Time.now, date_end: Time.now)
    expect(Space.all.length).to eq(2) 
  end
end
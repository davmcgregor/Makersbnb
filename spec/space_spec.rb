
describe Space do
  it " we can create a space" do
   space = Space.create(name: "name", description: "description", price: "price")
    expect(space).to be_a Space
  end
  it'retreive list of spaces' do
    Space.create(name: "name", description: "description", price: "price")
    Space.create(name: "name", description: "description", price: "price")

    expect(Space.all.length).to eq(2) 
  end
end
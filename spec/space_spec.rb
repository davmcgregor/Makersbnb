
describe Space do
  it " we can create a space" do
   space = Space.create(name: "name", description: "description", price: "price")
    expect(space).to be_a Space
  end
end
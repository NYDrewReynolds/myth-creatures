require_relative "medusa"
describe Medusa do
  before do
    @medusa = Medusa.new("Ugh")
    @victim = Person.new("Dude")
  end

  it "will return Ugh when name method is called" do
    expect(@medusa.name).to eq("Ugh")
  end

  it "will return statues when stautues method is called" do
    expect(@medusa.statues).to eq([])
  end

  it "will add victim to statues when stare method is called on Persons" do

    expect(@medusa.stare(@victim)).to eq(true)
    expect(@medusa.statues.count).to eq(1)
    expect(@medusa.statues.first.name).to eq("Dude")
  end

  it "will change stoned to true when called on victim" do
  @medusa.stare(@victim)
  expect(@victim.stoned?).to eq(true)
  end

end

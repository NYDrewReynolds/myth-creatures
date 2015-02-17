require_relative "vampire"

describe Vampire do
  before do
  @vampire = Vampire.new("The Count")
  end

it "will return the name when called" do
  expect(@vampire.name).to eq("The Count")
end

it "will return bat when pet is called" do
  expect(@vampire.pet).to eq("bat")
end

it "thirsty will return true" do
  expect(@vampire.thirsty?).to eq(true)
end

it "thirsty will return false after a drink" do
  @vampire.drink
  expect(@vampire.thirsty?).to eq(false)
end

end

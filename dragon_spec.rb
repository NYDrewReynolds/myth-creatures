require_relative "dragon"

describe Dragon do
  before do
  @dragon = Dragon.new("Cinder", "Green", "Joey")
  @food = 0
  @hungry = true
  end

  it "will give Cinder when name method is called" do
    expect(@dragon.name).to eq("Cinder")
  end

  it "will give Green when color method is called" do
    expect(@dragon.color).to eq("Green")
  end

  it "will give Joey when rider method is called" do
    expect(@dragon.rider).to eq("Joey")
  end

  it "will give true when hungry method is called" do
    expect(@dragon.hungry?).to eq(true)
  end

  it "will increase food by 1 when eat method is called" do
    expect(@dragon.eat).to eq(@food +1)
  end

  it "will return false when eat method is called twice" do
    @dragon.eat
    @dragon.eat
    @dragon.eat
    expect(@dragon.hungry?).to eq(false)
  end


end

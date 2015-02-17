require_relative "unicorn"

describe Unicorn do
  before do
    @unicorn = Unicorn.new("Meg")

  end

    it "returns it's name when called" do
      expect(@unicorn.name).to eq("Meg")
    end

    it "runs white when white is called" do
      expect(@unicorn.color).to eq("white")
    end

    it "returns true when white? is called" do
      expect(@unicorn.white?).to eq(true)
    end

    it "returns false when color is not white" do
      @unicorn.color = "blue"
      expect(@unicorn.white?).not_to eq(true)
    end

    it "returns sparkles between inputed text" do
      expect(@unicorn.say("Mehhh")).to eq("**;* Mehhh **;*")
    end

end

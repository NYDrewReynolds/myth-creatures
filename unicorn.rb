class Unicorn
  attr_accessor :color, :name

  def initialize(name, color = "white")
    @name = name
    @color = color
  end

  def white?
    if @color == "white"
      true
    else
      false
    end
  end

  def say(text)
    "**;* #{text} **;*"
  end

end

poo = Unicorn.new("ken")

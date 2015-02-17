class Dragon

attr_accessor :name, :rider, :color

def initialize(name, color, rider)
  @name = name
  @color = color
  @rider = rider
  @hungry = true
  @food = 0
end

def hungry?
  @hungry
end

def eat
  if @food == 2
    @hungry = false
  else
    @hungry
    @food +=1
  end
end

end

fred = Dragon.new("Fred", "Black", "John")

class Medusa
  attr_reader :name

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    @statues << victim
    victim.stoned = true
  end

  def statues
    @statues
  end

end


class Person
  attr_reader :name
  attr_accessor :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def to_s
    @name
  end
  def stoned?
      @stoned
  end

end

medusa = Medusa.new("Ugh")
victim = Person.new("Dude")
puts victim.name
medusa.stare(victim)
puts medusa.statues

# attr_reader only allows the value to be set when the instance
# of the class is created or within the class
# # use attr_accessor(write and read access) when you want the value
# to be changed within another class or outside of that class

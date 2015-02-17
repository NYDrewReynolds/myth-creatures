class Hobbit
  attr_accessor :name

  def initialize(name, disposition = "homebody")
  @name = name
  @disposition = disposition
  @age = 0
  @adult = false
  end

  def disposition
    @disposition
  end

  def age
    @age
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    if age < 33
      @adult
    else
      @adult = true
    end
  end

end

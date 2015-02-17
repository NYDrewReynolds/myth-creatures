class Werewolf
  attr_reader :name, :location

  def initialize(name, location = "London")
    @name = name
    @location = location
    @human = true
    @werewolf_form = false
    @count = 0
  end

  def human?
    @human
  end

  def change!
    @count +=1
    if @count.odd?
      @human = false
    else @count.even?
      @human = true
    end

    if @count.odd?
      @werewolf_form = false
    else @count.even?
      @werewolf_form= true
    end
  end

  def werewolf?
    @werewolf_form = true
  end


end

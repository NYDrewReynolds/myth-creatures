class Centaur
  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @fatique = 0
    @lay_down = false
  end

  def shoot
    @fatique +=1
    if @fatique >= 3
      @cranky = true
      "NO!"
    elsif @lay_down == true
      "NO!"
    else
      "Twang!!!"
    end
  end

  def run
    @fatique+=1
    if @fatique >= 3
      @cranky = true
      "NO!"
    elsif @lay_down == true
      "NO!"
    else
    "Clop clop clop clop!!!"
    end

  end

  def cranky?
    @cranky
  end

  def standing?
    @standing
  end

  def sleep
    if @standing == true
    "NO!"
    else @lay_down == true
    @fatique = 0
    @cranky = false
    end
  end

  def lay_down
    @standing = false
    @lay_down = true
  end

  def laying?
    @lay_down
  end

  def stand_up
    @standing = true
    @lay_down = false
  end


end

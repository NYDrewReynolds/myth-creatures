class Wizard
  attr_accessor :name

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
  end

  def bearded?
    @bearded
  end

  def incantation(text)
    if text == "chown"
      "sudo chown ~/bin"
    elsif text == "rm -rf /home/mirandax"
      "sudo rm -rf /home/mirandax"
    else text == "chown ~/bin"
      "sudo chown ~/bin"
    end
  end

end

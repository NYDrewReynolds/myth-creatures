class Pirate
  attr_accessor :name

  def initialize(name, job = 'Scallywag')
    @name = name
    @job = job
    @curse = false
    @felony = 0
  end

  def job
    @job
  end

  def cursed?
    @curse
  end

  def commit_heinous_act
    if @felony == 2
      @curse = true
    else
      @felony += 1
    end
  end


end

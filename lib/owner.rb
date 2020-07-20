class Owner
  attr_reader :species, :name
  @@all = []

  def initialize()
    @species = 'human'
  end #initialize

  def say_species
    "I am a #{self.species}."
  end #say_species
end

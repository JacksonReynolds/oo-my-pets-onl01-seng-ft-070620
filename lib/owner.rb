class Owner
  attr_reader :species, :name
  @@all = []

  def initialize()
    @species = 'human'
  end #initialize

  def say_species
    "I am a #{self.species}."
  end #say_species

  def self.all
    @@all
  end #self.all
end

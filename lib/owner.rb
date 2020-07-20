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

  def self.count
    self.all.length
  end #self.count

  def self.reset_all
    @@all = []
  end #self.reset_all
end

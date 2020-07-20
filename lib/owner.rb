require 'cat.rb'
require 'dog.rb'

class Owner
  attr_reader :species, :name
  @@all = []

#INSTANCE METHODS
  def initialize(name)
    @name = name
    @species = 'human'
    @@all << self
  end #initialize

  def say_species
    "I am a #{self.species}."
  end #say_species

  def cats
    Cats.select {|cat| cat.owner == self}
  end #cats

#CLASS METHODS
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

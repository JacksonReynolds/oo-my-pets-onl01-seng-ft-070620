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
    Cat.all.select {|cat| cat.owner == self}
  end #cats

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end #cats

  def buy_cat(cat)
    if !cat
      new_cat = Cat.new(cat, self)
    else
      cat.owner = self
    end #if
  end #buy_cat

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

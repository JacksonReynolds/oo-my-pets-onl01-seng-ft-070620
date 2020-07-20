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
      new_cat = Cat.new(cat, self)
  end #buy_cat

  def buy_dog(dog)
      new_dog = Dog.new(dog, self)
  end #buy_cat

  def walk_dogs
    Dog.all.each {|dog| dog.mood = 'happy'}
  end #walk_dogs

  def feed_cats
    Cat.all.each {|cat| cat.mood = 'happy'}
  end #feed_cats

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

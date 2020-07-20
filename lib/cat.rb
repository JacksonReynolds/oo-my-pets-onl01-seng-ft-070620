require 'owner.rb'

class Cat
  attr_accessor :mood, :owner
  attr_reader :name
  @@all = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = 'nervous'
  end #initialize
end

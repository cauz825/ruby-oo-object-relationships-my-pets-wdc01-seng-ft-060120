require './cat.rb'
require './dog.rb'
require 'pry'
class Owner
  # code goes here
  attr_reader :name, :species
  attr_writer
  attr_accessor
  @@all = [] 

  def initialize (name, species="human")
    @name = name
    @species = species
    say_species
    @@all << self
    @pet
  end

  def say_species
    "I am a #{species}."
  end

  def self.all
    return @@all
  end

  def self.count
    return @@all.count
  end

  def self.reset_all
    self.all.clear
  end
  def cats
     Cat.all.select do |cat|
      cat.owner == self
    end
  end

  def dogs
    Dog.all.select do |dog|
    dog.owner == self
    end
  end

  def buy_cat(name,owner)
  Cat.new(name,owner)
  end
  


end


require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []
  
  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.size
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
    @pets
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
    @pets
  end
  
  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dog] << new_dog
    @pets
  end
end
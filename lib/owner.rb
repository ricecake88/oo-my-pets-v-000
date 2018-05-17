class Owner
  attr_accessor :name
  attr_reader :species, :pets
  
  @@all = []
  
  def initialize(species)
    @species = species
    @@all << self
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

  def pets(pets={:fishes=>[], :dogs=>[], :cats=>[]})
    @pets = pets
  end
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
    puts @pets
  end
end
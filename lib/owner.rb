class Owner
  attr_reader :species
  
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
    puts "I am a #{self.species}."
  end
end
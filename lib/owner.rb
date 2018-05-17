class Owner
  attr_accessor :type
  
  @@all = []
  
  def initialize(type)
    @type = type
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
end
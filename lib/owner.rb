class Owner
  @@all = []
  def initialize
    @all << self
  end
  
  def self.all
    @@all
  end
end
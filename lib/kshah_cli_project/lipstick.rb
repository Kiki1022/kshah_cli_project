class Lipstick
  
  attr_accessor :id, :brand, :name, :product_link, :tag_list
    @@all = []
  
    def initialize
      @@all << self 
    end
    
    def self.all 
      @@all
    end
  def save
    @@all << self
  end
  
   def self.create(name)
    song = new(name) 
    song.save 
    song
  end
  
  # def self.find_by_name(name) :tag_list = ,  
  #   all.find {|s| s.name == name}
  # end 
  
  # def self.find_or_create_by_name(name)
  #   find_by_name(name) || create(name)
  # end
  
 
end
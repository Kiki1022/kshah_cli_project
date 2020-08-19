
class Lipstick
  
  attr_accessor :id, :brand, :name, :product_link, :tag_list
    @@all = []
  
    def initialize
      @@all << self 
    end
    
    
    def self.all 
      @@all
    end
  
end
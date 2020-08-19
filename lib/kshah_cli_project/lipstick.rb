
class Lipstick
  
  attr_accessor :id, :brand, :name, :product_link, :tag_list
    @@all = []
  
    def initialize
      
      @tag_list = tag_list
      @name = name
      @product_link = product_link
      @@all << self 
    
    end
    
    
    def self.all 
      @@all
    end

  
  
  
  
  
end
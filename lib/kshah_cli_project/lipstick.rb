
class Lipstick
  
  attr_accessor :tag_list, :name, :product_link
    @@all = []
  
    def initialize(tag_list)
      
      @tag_list = tag_list
      @name = name
      @product_link = product_link
      @@all << self 
    
    end
    
    
    def self.all 
      @@all
    end

  
  
  
  
  
end
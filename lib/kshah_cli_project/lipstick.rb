class Lipstick
  
  attr_accessor :id, :brand, :name, :product_link, :tag_list
    @@all = []
  
    def initialize
      @@all << self 
    end
    
    def self.all 
      @@all
    end

    def self.find_by_name(tag) 
     @@all.select {|l| l.tag_list.include? tag}
    end 
   
   def print_info
     puts "BRAND: #{@brand}" 
     puts "NAME:  #{@name}" 
     puts "LINK:  #{@product_link}"
     puts "=="*10
   end
  
end
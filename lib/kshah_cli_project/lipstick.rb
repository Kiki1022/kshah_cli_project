class Lipstick
  
  attr_accessor :brand, :name, :product_link, :tag_list
    @@all = []
  
    def initialize
      @@all << self 
    end
    
    def self.all 
      @@all
    end

    def self.find_by_name(tag) 
      if ["Vegan", "Natural", "Peanut Free Product", "Gluten Free", "Organic", "Chemical Free"].include? tag
     @@all.select {|l| l.tag_list.include? tag}.each{|l| l.print_info}
      else
        puts "***Please try again***".colorize(:red)
      end
    end 
   
   def print_info
     puts "=="*10
     puts "BRAND: #{@brand}".colorize(:light_magenta)
     puts "NAME:  #{@name}".colorize(:light_cyan)
     puts "LINK:  #{@product_link}".colorize(:light_blue)
     puts "=="*10
     
   end
  
end
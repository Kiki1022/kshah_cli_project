class Lipstick
  
  attr_accessor :brand, :name, :product_link, :tag_list
    @@all = []
    @@tags =  ["Vegan", "Natural", "Peanut Free Product", "Gluten Free", "Organic", "Chemical Free"]
    
    def initialize(brand, name, product_link, tag_list)
      @brand = brand
      @name = name
      @product_link = product_link
      @tag_list = tag_list
      @@all << self 
    end
    
    def self.all 
      @@all
    end

    def self.find_by_name(tag) 
      if @@tags.include? tag
        @@all.select {|l| l.tag_list.include? tag}.each{|l| l.print_info}
      else
        puts "***Please try again***".colorize(:red)
      end
    end 
   
   def self.get_all_brands
     @@all.map {|l| l.brand}.uniq 
   end
   
   def self.search_brands(number)
    if number >= 1 && number <= self.get_all_brands.count
      brand = self.get_all_brands[number-1]
      @@all.filter {|l| l.brand == brand}.each {|l| l.print_info}
    else
      puts "*Invalid Response*".colorize(:red)
      puts "*If you would still like to search by brand, enter 'brand'...*".colorize(:red)
      puts "*Otherwise, choose from an option below.*".colorize(:red)
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
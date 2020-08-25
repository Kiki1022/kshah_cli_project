require 'colorize'
class KshahCliProject::Cli
  
  def greeting
    sleep 1
    puts "*****The Lipstick Reader Welcomes You*****".colorize(:light_red)
    sleep 1
    puts "Loading Menu...".colorize(:light_red)
    KshahCliProject::API.get_response_body
    menu
  end
  
  def menu
    input = ''
    while input != 'Exit' 
    puts "*For a list of brands, enter 'brand'."
    puts "*For vegan selection, enter 'vegan'."
    puts "*For all natural selection, enter 'natural'."
    puts "*For peanut free product selection, enter 'peanut free product'."
    puts "*For gluten free selection, enter 'gluten free'."
    puts "*For organic selection, enter 'organic'."
    puts "*For chemical free selection, enter 'chemical free'."
    puts "*If you have no preferences, enter 'surprise me'.".colorize(:light_cyan)
    puts "~~~To exit, enter 'exit'.~~~".colorize(:light_yellow)
    input = gets.strip.split(" ").collect {|x| x.capitalize}.join(" ")
      if input == "Surprise Me" 
        Lipstick.all.sample.print_info
      elsif input == 'Exit'
        puts "*****Thank you for visiting the Lipstick Reader*****".colorize(:light_red)
        elsif input == 'Brand'
        Lipstick.get_all_brands.each_with_index {|b,i| puts "#{i+1}. #{b}"}
        puts "Enter the number of the brand for more information:".colorize(:light_cyan)
        number = gets.chomp.to_i 
        Lipstick.search_brands(number)
      else
        Lipstick.find_by_name(input)
      end
    end 
  end
end 

  

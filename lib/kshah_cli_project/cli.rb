require 'colorize'
class KshahCliProject::Cli
  
  def greeting
    sleep 1
    puts "*****The Lipstick Reader Welcomes You*****".colorize(:red)
    menu
  end
  
  def menu
    API.get_response_body
    input = ''
    while input != 'Exit' 
    puts "*For vegan selection, enter 'vegan'."
    puts "*For all natural selection, enter 'natural'."
    puts "*For peanut free product selection, enter 'peanut free product'."
    puts "*For gluten free selection, enter 'gluten free'."
    puts "*For organic selection, enter 'organic'."
    puts "*For chemical free selection, enter 'chemical free'."
    puts "*If you have no preferences, enter 'surprise me'.".colorize(:yellow)
    puts "~~~To exit, enter 'exit'.~~~".colorize(:blue)
    input = gets.strip.split(" ").collect {|x| x.capitalize}.join(" ")
    if input == "Surprise Me" 
      Lipstick.all.sample.print_info
      elsif input == 'Exit'
      puts "*****Thank you for visiting the Lipstick Reader*****".colorize(:red)
    else
      Lipstick.find_by_name(input)
    end
  end 
  end
end 

  

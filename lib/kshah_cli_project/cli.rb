class KshahCliProject::Cli
  
  def greeting
    sleep 1
    puts "*****The Lipstick Reader Welcomes You*****"
    menu
  end
  
  def menu
    API.get_response_body
    input = ''
    while input != 'Exit' 
    puts "*For vegan selection, enter 'Vegan'."
    puts "*For all natural selection, enter 'Natural'."
    puts "*For peanut free product selection, enter 'Peanut Free Product'."
    puts "*For gluten free selection, enter 'Gluten Free'."
    puts "*For organic selection, enter 'Organic'."
    puts "*For chemical free selection, enter 'Chemical Free'."
    puts "*If you have no preferences, enter 'Surprise Me'." 
    puts "*To leave, type 'Exit'."
    input = gets.strip.split(" ").collect {|x| x.capitalize}.join(" ")
    if input == "Surprise Me" 
      Lipstick.all.sample.print_info
      elsif input == 'Exit'
      puts "Thank you have a nice day."
    else
      Lipstick.find_by_name(input)
    end
  end 
  end
end 

  

class KshahCliProject::Cli
  
  def greeting
    sleep 1
    puts "*****The Lipstick Reader Welcomes You*****"
    menu
  end
  
  def menu
    API.get_response_body
    input = ''
    while input != 'exit' 
    puts "*For vegan selection, enter 'Vegan'."
    puts "*For all natural selection, enter 'Natural'."
    puts "*For peanut free product selection, enter 'Peanut Free Product'."
    puts "*For gluten free selection, enter 'Gluten Free'."
    puts "*If you have no preferences, enter 'Surprise Me'." 
    puts "*To leave, type 'exit'."
    input = gets.strip
    if input == "Surprise Me" 
      Lipstick.all.sample.print_info
    else
      Lipstick.find_by_name(input).each{|l| l.print_info}
    end
  end 
  end
end 

  

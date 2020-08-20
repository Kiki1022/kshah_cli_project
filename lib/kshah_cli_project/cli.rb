
class KshahCliProject::Cli
  
  
  def greeting
    sleep 1
    puts "*****The Lipstick Reader Welcomes You*****"
    menu
  end
  
  def menu
    API.get_response_body
    sleep 1
    input = ''
    while input != 'exit' 
    puts "For vegan selection, enter 'vegan'."
   
    sleep 1
    puts "For all natural selection, enter 'natural'."
    #list_natural
    sleep 1
    puts "For peanut free product selection, enter 'peanut free'."
    #list_peanut_free
    sleep 1
    puts "For gluten free selection, enter 'gluten free'."
    #list_gluten_free
    sleep 1
    puts "If you have no preferences, enter 'Surprise me'." 
    #list_surprise
    sleep 1
    puts "To leave, type 'exit'."
    input = gets.strip
    if input == "Surprise me" 
    Lipstick.all.sample.print_info
  else
    Lipstick.find_by_name(input).each{|l| l.print_info}
  end
    end 
  end
 end 
  
 
  
  
  

 
  # lipstick Reader
  # famous old women
  # ability to select the perfect brand and line of lipsticks for anyone that hires her.  
  # until now she had to turn down clients with allergies and specific preferences. she thought it was a hoax! until it started affecting her business. she summoned the lipstick gods to upgrade her gifts. 
  # she is now able to service clients with such requirements.
  
  # Thank you for visiting The Lipstick Reader, please choose an option below for me to reveal what I see in your lipstick future:
    
    
 
  
  # if choose 1-5 return id that includes (brand, name, link) in text format
  #   if choose "just surprise me" randomly select (brand,name,link)
  
  
  
  

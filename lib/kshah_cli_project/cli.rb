
class KshahCliProject::Cli
  
  
  def greeting
    sleep 1
    puts "*****The Lipstick Reader Welcomes You*****"
    menu
  end
  
  def menu
    sleep 1
    input = ''
    while input != 'exit' #does this need end?
    puts "For vegan selection, enter 'vegan'."
    #list_vegan
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
    puts "If you have no preferences, enter 'surprise me'." 
    #list_surprise
    sleep 1
    puts "To leave, type 'exit'."
    input = gets.strip
   end 
  end
 end 
  
 
  # if enter 1 return "vegan", brand, name and product links in hash or as text?
    
  # if enter "Just surprise me" randomly select a brand, name, product link.
  
  #keep looping until exit#
  
  

 
  # lipstick Reader
  # famous old women
  # ability to select the perfect brand and line of lipsticks for anyone that hires her.  
  # until now she had to turn down clients with allergies and specific preferences. she thought it was a hoax! until it started affecting her business. she summoned the lipstick gods to upgrade her gifts. 
  # she is now able to service clients with such requirements.
  
  # Thank you for visiting The Lipstick Reader, please choose an option below for me to reveal what I see in your lipstick future:
    
    
    #Welcome to the Liptick Reader. Pleaes choose one option below. 
    # 1.Vegan
    # 2.Cruelty-free
    # 3.Peanut free product
    # 4.Gluten free
    # 5.Organic
    # 6. Just Surprise Me
  
  # if choose 1-5 return id that includes (brand, name, link)
  #   if choose "just surprise me" randomly select (brand,name,link)
  
  
  
  

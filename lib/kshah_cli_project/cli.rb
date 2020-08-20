
class KshahCliProject::Cli
  
  
  def greeting
    sleep 1
    puts "*****The Lipstick Reader Welcomes You*****"
    menu
  end
  
  def menu
    sleep 1
    #while input != 'exit' does this need end?
    puts "Enter a number that matches your option below for me to reveal what I see in your future:"
    sleep 1
    puts "1.Vegan"
    sleep 1
    puts "2.Cruelty Free"
    sleep 1
    puts "3.Peanut Free Product"
    sleep 1
    puts "4.Gluten Free"
    sleep 1
    puts "5.Organic"
    sleep 1
    puts "6.Just Surprise Me!"
    
    input = gets.strip
      
    # case input
    #     when '1'
    #       list_vegan
    #     when '2'
    #       list_cruelty_free
    #     when '3'
    #       list_peanut_free
    #     when '4'
    #       list_gluten_free
    #     when '5'
    #       list_organic
    #     when '6'
    #       list_surprise
    #     end
    
  end
 end 
  
  # #change number to integer? get to integer?
  # match number to option
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
  
  
  
  

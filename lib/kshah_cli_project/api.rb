require 'pry'
require 'net/http'
require 'open-uri'
require 'json'

class API
  
      def self.get_response_body
        
        url = "http://makeup-api.herokuapp.com/api/v1/products.json?product_category=lipstick&product_type=lipstick"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        lipstick = JSON.parse(response.body) 
        lipstick.each do |attribute|
          lip = Lipstick.new 
          lip.brand = attribute["brand"]
          lip.name = attribute["name"]
          lip.product_link = attribute["product_link"]
          lip.tag_list = attribute["tag_list"]
        end
      end
end
 


require 'httparty'

module Url
    
    # check for valid url
    def Url.is_url_valid(url)
        begin
            HTTParty.get(url)
            return true
        rescue => e
            puts "Rescued #{e.inspect}"
            return false
        end
    end
    
    
    # check if response code is 200 OK
    def Url.is_status_valid(url)
        code = HTTParty.get(url).code
        if  code == 200
            print_status(code)
            return true
        else
            print_status(code)
            return false
        end
    end
    
    
    # print some common http status codes
    def Url.print_status(code)
        case code
            when 200
                puts "200 OK"
            when 301
                puts "301 Moved Permanently"
            when 400
                puts "400 Bad Request"
            when 401
                puts "401 Unauthorized"
            when 403
                puts "403 Forbidden"
            when 404
                puts "404 Not Found"
            when 500...600
                #puts "ZOMG ERROR #{response.code}"
                puts "500..600"
        end
    end
    
    
    # construct products endpoint of shop
    def Url.get_products_endpoint(url)
        if url[-1,1] == '/'
            url += "products.json?page="
        else
        	url += "/products.json?page="
        end
        return url
    end
    
end
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
    
end
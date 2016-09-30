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
    
end
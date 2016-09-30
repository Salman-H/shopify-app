
module Input
    
    # check if a string is all letters plus spaces
    def Input.all_letters(str)
        str[/[a-zA-Z\s]+/]  == str
    end
    
    
    # check if a string is all digits
    def Input.all_digits(str)
        str[/[0-9]+/]  == str
    end
    
    
    # prompt user for a valid shopify store url
    def Input.prompt_shop_url
        url = ''
        loop do
            puts
            puts "Enter a valid shopify store url:"
            url = gets.chomp
            url = Url.get_products_endpoint(url)
            break if Url.is_url_valid(url) and Url.is_status_valid(url)
        end 
        return url
    end
    
end
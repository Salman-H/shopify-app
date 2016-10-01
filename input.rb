$LOAD_PATH << '.'

require 'url.rb'

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
            print "Enter a valid shopify store url: "
            url = gets.chomp
            url = Url.get_products_endpoint(url)
            break if Url.is_url_valid(url) and Url.is_status_valid(url)
        end 
        return url
    end
    
    
    # prompts user for the number of products they want info on
    def Input.prompt_num_products
        num_products = ''
        loop do
            puts
            print "Number of products you want info on: "
            num_products = gets.chomp
            break if all_digits(num_products)
        end
        return num_products.to_i
    end
    
    
    # prompts user for names of the product types they want info on
    def Input.prompt_products_list
        num_products = prompt_num_products
        products_to_find = Array.new(num_products)
        puts
        puts "NOTE: make sure to enter product types exactly as they are listed in their Shopify store."
        puts
        for i in 1..num_products
        	product = ''
        	loop do
        	    print "product #{i}: "
        	    product = gets.chomp
            	break if all_letters(product)
            end
            products_to_find.push(product)
        end
        puts
        puts "Won't be long..."
        return products_to_find.uniq
    end
    
end
module Shop
    
    # global
    $products_count_hash = Hash.new
    $products_price_hash = Hash.new
    
    
    # create a hash of |product => count| pairs from products_to_find
    def Shop.create_count_hash(products_to_find)
        $products_count_hash = Hash[products_to_find.collect { |product| [product, 0] }]
    end
    
    
    # create a hash of |product => price| pairs from products_to_find
    def Shop.create_price_hash(products_to_find)
        $products_price_hash = Hash[products_to_find.collect { |product| [product, 0.0] }]
    end
    
    
    # for each requested product type finds total price from listed products
    def Shop.find_prices(products_array)
        
        products_array.each do |product|
            if $products_count_hash.key?(product["product_type"])
                
                # count product's occurrence
                $products_count_hash[product["product_type"]] += 1
                
                # add up product's price for all variants
                variants_array = product["variants"]
                variants_array.each { |variant|
                    $products_price_hash[product["product_type"]] += variant["price"].to_f
                }
            end
        end
    end
    
    
    # check if reached end of json body
    def Shop.is_page_end(products_array)
        products_array.length == 0 ? true : false
    end  
    
    
    # sum total price of all products requested
    def Shop.get_total_price
        total = 0.0;
        $products_price_hash.each do |product, price|
            total += price
        end
        return total.round(2)
    end
    
    
    # print result consisting of frequency and prices of requested products
    def Shop.print_result
        puts ""
        puts "drum roll..."
        puts ""
        puts "This Shopify store contains: "
        
        $products_count_hash.each do |product, count|
            if not product.nil?
                puts count.to_s + " products for type " + product +
                " worth $" + $products_price_hash[product].round(2).to_s
            end
        end
        puts "------------------------------------------"
        print "Total price of these products: "
        puts "$" + get_total_price.to_s
        puts ""
    end
    
end
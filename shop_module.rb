module Shop
    
    # global
    $products_count_hash = Hash.new
    $products_price_hash = Hash.new
    
    
    # create a hash of product, price pairs from products_to_find
    def Shop.create_hashes(products_to_find)
        $products_count_hash = Hash[products_to_find.collect { |product| [product, 0] }]
    end
    
    
    # create a hash of product, product count pairs from products_to_find
    def Shop.create_hashes(products_to_find)
        $products_price_hash = Hash[products_to_find.collect { |product| [product, 0.0] }]
    end
    
end
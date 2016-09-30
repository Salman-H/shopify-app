$LOAD_PATH << '.'

require 'shop_module.rb'
require 'url_module.rb'
require 'input_module.rb'


# call prompt methods to handle user inputs
url = Input.prompt_shop_url
products_to_find = Input.prompt_products_list


# initialize product count and price hashes
Shop.create_count_hash(products_to_find)
Shop.create_price_hash(products_to_find)


# process products json on each page until reached end of page
end_of_page = false
page = 1
until end_of_page
    base_url = url + page.to_s
    #format :json
    # connect to current base url
    res = Url.read_response(base_url)
    
    # parse the response into json
    json = Url.parse_response(res)
    
    # extract array from json hash
    products_array = json["products"]
    
    # check if reached end of json result
    end_of_page = Shop.is_page_end(products_array)
    
    # iterate over json to find product prices
    Shop.find_prices(products_array)
    
    page += 1
end


# call shop method to print price results of requeste products
Shop.print_result
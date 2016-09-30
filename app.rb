$LOAD_PATH << '.'

require 'shop_module.rb'
require 'url_module.rb'
require 'input_module.rb'


# call prompt methods to handle user inputs
url = Input.prompt_shop_url
products_to_find = Input.prompt_products_list
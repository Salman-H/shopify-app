# shopify-app
A command line app that can retrieve prices of specified products from any Shopify store without requiring authorization

## Usage
Requires the HTTParty Ruby gem
<img src="/screenshots/install_httparty.PNG" alt="alt text" width="900" height="29">

To run the app
<img src="/screenshots/run_app.PNG" alt="alt text" width="900" height="29">

## Demo

### 1. url input and response
#### A. urls of shopify stores
This is an example of a url input for a shopify store:
![](/screenshots/valid_url_prompt_1.PNG)

This is another example of a url input for a shopify store:
![](/screenshots/valid_url_prompt_2.PNG)

This is the response for above inputs:
![](/screenshots/response_200.PNG)

#### B. bad urls
Program will continue to prompt for a shopify store url until one is provided.

This is an example of a bad url:
<img src="/screenshots/invalid_url_prompt_1.PNG" alt="alt text" width="900" height="26">
<img src="/screenshots/invalid_url_response_1.PNG" alt="alt text" width="900" height="65">

This is an example of entering a url that does not exist:
<img src="/screenshots/invalid_url_prompt_response_3.PNG" alt="alt text" width="900" height="94">

#### C. valid non-shopify store urls
This is an example of a valid url that does not belong to a shopify store:
![](/screenshots/invalid_url_prompt_response_2.PNG)

### 2. products to find
If a valid shopify store url was entered, program will prompt for the number of products to find info on:
![](/screenshots/two_product_requests.PNG)
![](/screenshots/note_valid_product_names.PNG)

Subsequently, user will be prompted to enter the names of the product types.

Program will continue to prompt for name of a product type until a string consisting of all letters plus spaces is entered.

These are two product categories from the Shopify store, **shopicruit**:
![](/screenshots/two_product_names_1.PNG)

These are two product categories from the Shopify store, **raredevice**:
![](/screenshots/two_product_names_2.PNG)

### 3. printing results on products
After user has entered the names of the product types to find info on, program will display a message indicating 
that the results are being processed:
![](/screenshots/wont_be_long.PNG)

This is an example of a result on products for type **Clock** and **Watch** from the Shopify store, **shopicruit**:
![](/screenshots/results_1.PNG)

This is an example of a result on products for type **Kids** and **Living** from the Shopify store, **raredevice**:
![](/screenshots/results_2.PNG)


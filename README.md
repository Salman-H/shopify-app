# shopify-app
A command line app that can retrieve prices of specified products from any Shopify store without requiring authorization

## Usage
Requires the HTTParty Ruby gem
<img src="/screenshots/install_httparty.PNG" alt="alt text" width="900" height="26">

To run the app
<img src="/screenshots/run_app.PNG" alt="alt text" width="900" height="26">

## Demo

### 1. url input and response

#### urls of shopify stores
This is an exmple of a url input for a shopify store:
![](/screenshots/valid_url_prompt_1.PNG)

This is another example of a url input for a shopify store:
![](/screenshots/valid_url_prompt_2.PNG)

This is the response for above inputs:
![](/screenshots/response_200.PNG)

#### bad urls
Program will continue to prompt for a shopify store url until one is provided.

This is an example of a bad url:
<img src="/screenshots/invalid_url_prompt_1.PNG" alt="alt text" width="900" height="26">
<img src="/screenshots/invalid_url_response_1.PNG" alt="alt text" width="900" height="65">

This is an example of entering a url that does not exist:
<img src="/screenshots/invalid_url_prompt_response_3.PNG" alt="alt text" width="900" height="94">

#### valid non-shopify store urls
Program will continue to prompt for a shopify store url until one is provided.

This is an example of a valid url that does not belong to a shopify store:
![](/screenshots/invalid_url_prompt_response_2.PNG)


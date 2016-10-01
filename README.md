# shopify-app
A command line app that can retrieve prices of specified products from any Shopify store without requiring authorization

## Usage
Requires the HTTParty Ruby gem
```sh
gem install httparty
```

To run the app
```sh
ruby app.rb
```

## Demo

### 1. url input and response

#### urls of shopify stores
This is an exmple of a url input for a shopify store:
<img src="/screenshots/valid_url_prompt_1.PNG" alt="alt text" width="900" height="30">

This is another example of a url input for a shopify store:
<img src="/screenshots/valid_url_prompt_2.PNG" alt="alt text" width="900" height="30">

This is the response for above inputs:
<img src="/screenshots/response_200.PNG" alt="alt text" width="900" height="30">

#### bad urls
Program will continue to prompt for a shopify store url until one is provided.

This is an example of a bad url:
<img src="/screenshots/invalid_url_prompt_1.PNG" alt="alt text" width="900" height="30">
<img src="/screenshots/invalid_url_response_1.PNG" alt="alt text" width="900" height="80">

This is an example of entering a url that does not exist:
<img src="/screenshots/invalid_url_prompt_response_3.PNG" alt="alt text" width="900" height="60">

#### valid non-shopify store urls
Program will continue to prompt for a shopify store url until one is provided.

This is an example of a valid url that does not belong to a shopify store:
<img src="/screenshots/invalid_url_prompt_response_2.PNG" alt="alt text" width="900" height="60">

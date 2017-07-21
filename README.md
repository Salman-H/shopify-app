# Shopify App
A command line app that can retrieve prices of specified products from *any* Shopify store *without* requiring authorization

## Usage
Requires the HTTParty Ruby gem 
```Haskell
$ gem install httparty
```
To run the app 
```Haskell
$ ruby app.rb
```

<br>

## URL input and response

> URLs of shopify stores

This is an example of a url input for a shopify store:
```Shell
Enter a valid shopify store url: http://shopicruit.myshopify.com
```
This is another example of a url input for a shopify store: 
```Shell
Enter a valid shopify store url: http://raredevice.net/
```
This is the response for above inputs: 
```Shell
200 OK
```

<br>

> Bad URLs

Program will continue to prompt for a shopify store url until one is provided.
This is an example of a bad url:
```Shell
Enter a valid shopify store url: http-blah-blah
Rescued #<Errno::ECONREFUSED: Failed to open TCP connection to :80 (Connection refused - connect(2) for nil port 80)>

Enter a valid shopify store url:
```
This is an example of entering a url that does not exist: 
```Shell
Enter a valid shopify store url: https://www.amazon.ca/products

404 Not Found

Enter a valid shopify store url:
```

<br>

> Valid non-shopify store URLs

This is an example of a valid url that does not belong to a shopify store:
```Shell
Enter a valid shopify store url: https://github.com/

Enter a valid shopify store url:
```

<br>

## Products to find
If a valid shopify store url was entered, program will prompt for the number of products to find info on:
```
Number of products you want info on: 2

NOTE: make sure to enter product types exactly as they are listed in their Shopify store.
```
Subsequently, user will be prompted to enter the names of the product types. Program will continue to prompt for name of a product type until a string consisting of all letters plus spaces is entered.

These are two product categories from the Shopify store, [shopicruit](https://shopicruit.myshopify.com):
```
Product 1: Watch
Product 2: Clock
```

These are two product categories from the Shopify store, [raredevice](https://raredevice.net/):
```
Product 1: Kids
Product 2: Living
```

<br>

## Printing results on products
After user has entered the names of the product types to find info on, program will display a message indicating 
that the results are being processed:
```
Won't be long...
```

This is an example of a result on products for type **Clock** and **Watch** from the Shopify store, [shopicruit](https://shopicruit.myshopify.com):
```
drum roll...

This Shopify store contains:
8 products for type Clock worth $1556.4
5 products for type Watch worth $734.34
------------------------------------------
Total price of these products: $2290.74
```

This is an example of a result on products for type **Kids** and **Living** from the Shopify store, [raredevice](https://raredevice.net/):
```
drum roll...

This Shopify store contains:
42 products for type Kids worth $2754.24
176 products for type Living worth $26509.13
------------------------------------------
Total price of these products: $29263.37
```


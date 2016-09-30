
module Input
    
    # check if a string is all letters plus spaces
    def Input.all_letters(str)
        str[/[a-zA-Z\s]+/]  == str
    end
    
    # check if a string is all digits
    def Input.all_digits(str)
        str[/[0-9]+/]  == str
    end
end
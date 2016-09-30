
module Input
    
    # check if a string is all letters plus spaces
    def Input.all_letters(str)
        str[/[a-zA-Z\s]+/]  == str
    end
end
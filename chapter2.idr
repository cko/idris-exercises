module Main

palindrome : String -> Bool
palindrome s = s == reverse s 

palindromeCaseInsensitive : String -> Bool
palindromeCaseInsensitive s = palindrome (toLower s)

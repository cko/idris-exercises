module Main

palindrome : String -> Bool
palindrome s = s == reverse s 

palindromeCaseInsensitive : String -> Bool
palindromeCaseInsensitive s = palindrome (toLower s)

palindromeLongString : Nat -> String -> Bool
palindromeLongString l s = length s > l && palindromeCaseInsensitive s

counts : String -> (Nat, Nat)
counts s = (length (words s), length s)

top_ten : Ord a => List a -> List a
top_ten l = take 10  $ sort l

over_length : Nat -> List String -> Nat
over_length n l = length (filter (\a =>length a > n) l)

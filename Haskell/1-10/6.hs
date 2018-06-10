{-
    Author   : Chris M.
    Date     : 6/9/2018
    Problem  : Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).
-}


module Main where

p xs =  take halfSize  xs == reverse (drop (halfSize + (size `mod` 2)) xs)
    where 
        size     = length  xs
        halfSize = size `div` 2

main = do 
    print $ p [0,0,0,1,0,0,0]
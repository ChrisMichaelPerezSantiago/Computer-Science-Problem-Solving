{-
    Author   : Chris M.
    Date     : 6/10/2018
    Problem  : Extract a slice from a list. Given two indices, i and k, 
               the slice is the list containing the elements between the i'th 
               and k'th element of the original list (both limits included). 
               Start counting the elements with 1.
-}

module Main where

f :: [x] -> Int -> Int -> [x]
f xs i k
    | i > k = []
    | otherwise = (take (k-i+1) (drop (i - 1) xs))
    
main = do
    print $ f ['a','b','c','d','e','f','g','h','i','k'] 3 7

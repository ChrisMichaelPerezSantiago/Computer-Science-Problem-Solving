{-
    Author   : Chris M.
    Date     : 6/10/2018
    Problem  : Split a list into two parts; the length of the first part is given.
-}

module Main where

f :: [x] -> Int -> Int -> [x]
f xs i k
    | i > k = []
    | otherwise = (take (k-i+1) (drop (i - 1) xs))
    
main = do
    print $ f ['a','b','c','d','e','f','g','h','i','k'] 3 7
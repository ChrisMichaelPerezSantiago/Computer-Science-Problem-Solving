{-
    Author   : Chris M.
    Date     : 6/10/2018
    Problem  : Replicate the elements of a list a given number of times.
-}

module Main where

f :: [x] -> Int -> [x]
f xs n = concatMap (replicate n) xs
    
main = do
    print $ f "xyz" 4
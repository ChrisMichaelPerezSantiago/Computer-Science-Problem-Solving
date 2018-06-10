{-
    Author   : Chris M.
    Date     : 6/9/2018
    Problem  : Reverse a list
-}


module Main where

f :: [x] -> [x]
f = foldl (\x y -> y:x) []

main = do
    print $ f [1 .. 100]
        
        
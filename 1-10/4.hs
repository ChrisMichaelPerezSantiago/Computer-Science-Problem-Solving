{-
    Author   : Chris M.
    Date     : 6/9/2018
    Problem  : Find the number of elements of a list
-}


module Main where

f :: [x] -> Int
f = sum . map (\_ -> 1)
    
main = do
    print $ f [1 .. 100]
     
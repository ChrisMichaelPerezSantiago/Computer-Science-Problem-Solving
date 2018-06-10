{-
    Author   : Chris M.
    Date     : 6/10/2018
    Problem  : Duplicate the elements of a list
-}

module Main where

f :: [x] -> [x]
f xs = concat [[x , x] | x <- xs]

main = do
    print $ f [1,2,3,4]
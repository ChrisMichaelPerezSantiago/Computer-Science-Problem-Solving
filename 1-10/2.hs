{-
    Author   : Chris M.
    Date     : 6/9/2018
    Problem  : Find the last but one element of a list.
-}


module Main where

ls :: [x] -> x
ls xs = reverse xs !! 1

main = do
    print $ ls [1 .. 10]
    
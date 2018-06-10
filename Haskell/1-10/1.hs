{-
    Author   : Chris M.
    Date     : 6/9/2018
    Problem  : Find the last element of a list.
-}


module Main where

ls :: [x] -> x
ls [] = error "empty list!"
ls xs = head $ reverse xs

main = do
    print $ ls [1 .. 10]

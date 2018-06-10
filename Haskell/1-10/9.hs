{-
    Author   : Chris M.
    Date     : 6/10/2018
    Problem  : Pack consecutive duplicates of list elements into sublists.
-}


module Main where

f [] = []
f (x:xs) = (x: (filter (==x) xs)) : (f $ filter (/=x) xs)    

main = do
    print $ f ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']

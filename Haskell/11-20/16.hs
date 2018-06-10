{-
    Author   : Chris M.
    Date     : 6/10/2018
    Problem  : Drop every N'th element from a list.
-}

module Main where

f :: [x] -> Int -> [x]
f xs n = helper xs n
    where helper :: [x] -> Int -> [x]
          helper [] _ = []
          helper (x:xs) index
            | index  == n = helper xs 1
            | index  /= n = x:helper xs (index + 1) 

main = do 
    print $ f "abcdefghik" 3
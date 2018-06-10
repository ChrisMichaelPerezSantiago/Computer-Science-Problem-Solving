{-
    Author   : Chris M.
    Date     : 6/10/2018
    Problem  : Split a list into two parts; the length of the first part is given.
-}

module Main where

splitxs xs n = (take n xs , drop n xs)

main = do
    print $ splitxs "abcdefghik" 3
{-
    Author   : Chris M.
    Date     : 6/10/2018
    Problem  : Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length
               encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) 
               where N is the number of duplicates of the element E.
-}


module Main where
import Data.List

f :: (Eq x) => [x] -> [(Int , x)]
f = map (\x -> (length x , head x)) . group


main = do
    print $ f "aaaabccaadeeee"

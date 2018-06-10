{-
    Author   : Chris M.
    Date     : 6/10/2018
    Problem  : Modified run-length encoding.Modify the result of problem 10 in such
               a way that if an element has no duplicates it is simply copied into the 
               result list. Only elements with duplicates are transferred as (N E) lists.
-}


module Main where
import Data.List
data ListItem x = Single x | Multiple Int x
    deriving (Show)

modify :: (Eq x) => [x] -> [ListItem x]
modify = map h . f
    where h (1 , x) = Single x
          h (n , x) = Multiple n x

f :: (Eq x) => [x] -> [(Int , x)]
f = map (\x -> (length x , head x)) . group
     
main = do
    print $ modify "aaaabccaadeeee"
    
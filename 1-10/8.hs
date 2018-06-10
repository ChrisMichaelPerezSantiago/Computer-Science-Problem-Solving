{-
    Author   : Chris M.
    Date     : 6/9/2018
    Problem  : Eliminate consecutive duplicates of list elements.
-}


module Main where
import Data.List

f :: Eq x => [x] -> [x]
f = map head . group
   
main = do
    print $ f [1,1,2,1,1,3]
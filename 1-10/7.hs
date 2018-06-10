{-
    Author   : Chris M.
    Date     : 6/10/2018
    Problem  : Flatten a nested list structure.
-}


module Main where

data NestedList x = Elem x | List [NestedList x]
f :: NestedList x -> [x]
f (Elem x) = [x]
f (List x) = concatMap f x

main = do
    print $ f (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])

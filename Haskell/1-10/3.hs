{-
    Author   : Chris M.
    Date     : 6/9/2018
    Problem  : Find the K'th element of a list. The first element in the list is number 1.
-}


module Main where

f :: [x] -> Int -> x
f (x:_) 1 = x
f [] _    = error "out of bounds!"
f _ _     = error "out of bounds!"
f (_:xs) index 
    | index < 1 = error "out of bounds!"
    | otherwise = f xs (index - 1)
f xs index      = xs !! (index - 1)

main = do
    print $ f [1 .. 10] 1 

    
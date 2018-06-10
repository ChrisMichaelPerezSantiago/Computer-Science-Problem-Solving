{-
    Author   : Chris M.
    Date     : 6/10/2018
    Problem  : singleton lists (1 X) by X.
-}


module Main where

encode :: (Eq x) => [x] -> [(Int , x)]
encode = foldr helper []
    where helper x [] = [(1 , x)]
          helper x (y@(i , j) : ys)
            | x == j    = (1 + i , x) : ys
            | otherwise = (1 , x) : y:ys

    
main = do
    print $ encode "aaaabccaadeeee"
        
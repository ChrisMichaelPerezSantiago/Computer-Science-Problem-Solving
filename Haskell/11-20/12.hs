{-
    Author   : Chris M.
    Date     : 6/10/2018
    Problem  : Decode a run-length encoded list. Given a run-length code 
               list generated as specified in problem 11. Construct its 
               uncompressed version.
-}


module Main where
data ListItem x = Single x | Multiple Int x
    deriving (Show)

decode :: [ListItem x] -> [x]
decode = concatMap helper
    where helper (Single x)     = [x]
          helper (Multiple n x) = replicate n x

main = do
    print $ decode  [Multiple 4 'a',Single 'b',Multiple 2 'c',Multiple 2 'a',Single 'd',Multiple 4 'e']
    
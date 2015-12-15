module May142014 where

{- Find the previous element of a look-and-say sequence element if it exists
   Look and say is defined here: https://en.wikipedia.org/wiki/Look-and-say_sequence

   Example:

   >>> lookAndSayPrec [4,1,3,7]
   Just [1,1,1,1,7,7,7]

   >>> lookAndSayPrec []
   Nothing

-}

import Data.List

lookAndSayPrec :: [Int] -> Maybe [Int]
lookAndSayPrec xs
    | length xs < 2 || (odd $ length xs) = Nothing
    | otherwise = Just $ lasPrec xs

lasPrec (x1:x2:xs) = replicate x1 x2 ++ lasPrec xs
lasPrec _ = []

main = do
    print $ lookAndSayPrec [4, 1, 3, 7]
    print $ lookAndSayPrec [3, 2, 5, 1, 1, 8]
    print $ lookAndSayPrec []
    print $ lookAndSayPrec [1, 3, 6]
    print $ lookAndSayPrec [4]
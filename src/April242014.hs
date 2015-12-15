module April242014 where

import Data.Tree

-- Find an implementation of
dumbledore :: (a -> [b] -> b) -> Tree a -> b
dumbledore = undefined


{- | use dumbledore to compute the height of a tree

   Example:

   >>> heigth $ Node 4 [Node 5 [], Node 2 [Node 3 []]]
   3

-}

height :: Tree a -> Int
height = undefined


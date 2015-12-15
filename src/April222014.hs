module April222014 where

import Data.Tree
import Data.List

{- | paths
   list all the possible paths in a Tree

   Example:

   >>> paths $ Node 1 [Node 2 [],Node 3 [ Node 4 []]]
   [[1,2],[1,3,4]]

   >>> paths $ Node 'h' [Node 'a' [Node 'd' []], Node 'e' [Node 'l' [Node 'l' []]]]
   ["had","hell"]
-}

paths :: Tree a -> [[a]]
paths tree = undefined

main = do
    print $ paths $ Node 1 [Node 2 [],Node 3 [ Node 4 []]]
    print $ paths $ Node 'h' [Node 'a' [Node 'd' []], Node 'e' [Node 'l' [Node 'l' []]]]
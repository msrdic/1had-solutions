module April172014 where

{- | countEqualAdjacentPairs

   Count adjacent pairs (vertical or horizpontal) of values that are equal in
   a matrix.

   Examples:

   >>> countEqualAdjacentPairs [[0,1],[0,2]]
   1
   >>> countEqualAdjacentPairs [[0,0],[1,2]]
   1
   >>> countEqualAdjacentPairs [[0,1],[0,0]]
   2
   >>> countEqualAdjacentPairs [['a','a'],['a','a']]
   4
   >>> countEqualAdjacentPairs [[0,0,0],[0,0,0],[0,0,0]]
   12
-}

import Data.List
import Control.Monad

countEqualAdjacentPairs :: Eq a => [[a]] -> Int
countEqualAdjacentPairs = countAdjacent . fmap rotate . join (,)

rotate :: [[a]] -> [[a]]
rotate = reverse . transpose

countAdjacent :: Eq a => ([a],[a]) -> Int
countAdjacent = undefined

main = do
    print $ countAdjacent ([1,2,3], [1,2,3])
    print $ countAdjacent ([1,1,3], [1,1,3])
    print $ countAdjacent ([1,1,1], [1,1,1])
    --
    print $ countEqualAdjacentPairs [[0,1],[0,2]] -- 1
    print $ countEqualAdjacentPairs [[0,0],[1,2]] -- 1
    print $ countEqualAdjacentPairs [[0,1],[0,0]] -- 2
    print $ countEqualAdjacentPairs [['a','a'],['a','a']] -- 4
    print $ countEqualAdjacentPairs [[0,0,0],[0,0,0],[0,0,0]] -- 12
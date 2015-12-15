module May132014 where

{- Returns the sum of the two greatest value of a list.
   Returns Nothing if there are less than 2 elements.

   >>> maxTuples [1..10]
   Just 19

   >>> maxTuples [1]
   Nothing
-}

import Data.List

maxTuple :: (Ord a, Num a) => [a] -> Maybe a
maxTuple = return . sum . (!! 2) . inits . sortBy (flip compare)

main = do
    print $ maxTuple [1..10] -- Just 19
    print $ maxTuple [1] -- Nothing
    print $ [10,1,2,3,4,9,5,8,6,7] -- Just 19
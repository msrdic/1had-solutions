module April152014 where

{- | lowestFreeInt
   Find the lowest non-negative integer not in the list

   (Thanks to @clementd for this one)

   Example:

   >>> lowestFreeInt [0..10]
   11

   >>> lowestFreeInt [1..10]
   0

   >>> lowestFreeInt $ [0..9] ++ [2000,1999..11]
   10
-}
import Data.List ((\\))

lowestFreeInt :: [Int] -> Int
lowestFreeInt = head .  (\\) [0..]

main = do
    print $ lowestFreeInt [0..10] -- 11
    print $ lowestFreeInt [1..10] -- 0
    print $ lowestFreeInt $ [0..9] ++ [2000,1999..11] -- 10
    print $ lowestFreeInt $ [0,10,9,1,8,5,3,4,6,7] -- 2
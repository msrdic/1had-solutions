module May152014 where

{- List all the possible results of a n virtual dice roll.
   The first arugment is the number of faces on the die.
   The second arguments is the number of rolls.

   (We don't care if we can really construct an die with the given number of faces)

   Example:

   >>> diceResults 4 2
   [ [1,1]
    ,[1,2]
    ,[1,3]
    ,[1,4]
    ,[2,1]
    ,[2,2]
    ,[2,3]
    ,[2,4]
    ,[3,1]
    ,[3,2]
    ,[3,3]
    ,[3,4]
    ,[4,1]
    ,[4,2]
    ,[4,3]
    ,[4,4]
    ]
-}

import Data.List

diceResults :: Int -> Int -> [[Int]]
diceResults faces dices
    | dices <= 0 || faces <= 0 = []
    | faces == 1 = [replicate dices 1]
    | otherwise = undefined

main = do
    print $ diceResults 4 2
    print $ diceResults 1 0
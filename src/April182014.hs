module April182014 where

{- | combinations
   Builds all the combinations of length n of the elements of the initial list.

   Examples:

   >>> combinations 2 [0,1]
   [[0,0],[0,1],[1,0],[1,1]]

   >>> combinations 3 ['a','b']
   ["aaa","aab","aba","abb","baa","bab","bba","bbb"]

   >>> combinations (-2) ['a'..'z']
   [""]
-}

combinations :: Int -> [a] -> [[a]]
combinations len elems = sequence $ replicate len elems

combinationsPF :: Int -> [a] -> [[a]]
combinationsPF = (sequence .) . replicate

main = do
    print $ combinations 2 [0, 1] -- [[0,0],[0,1],[1,0],[1,1]]
    print $ combinations 3 ['a', 'b'] -- ["aaa","aab","aba","abb","baa","bab","bba","bbb"]
    print $ combinations (-2) ['a' .. 'z'] -- [""]
    --
    print $ combinationsPF 2 [0, 1] -- [[0,0],[0,1],[1,0],[1,1]]
    print $ combinationsPF 3 ['a', 'b'] -- ["aaa","aab","aba","abb","baa","bab","bba","bbb"]
    print $ combinationsPF (-2) ['a' .. 'z'] -- [""]
{-# LANGUAGE FlexibleInstances #-}
module May082014 where

{- Provide a list of all non-negative Integer tuples.

   Important property:

   Any Tuple can be reach in finite time
   prop> \t@(x,y) -> (x < 0) || (y < 0) || t `elem` intTuples
-}

intTuples :: [(Integer, Integer)]
intTuples = [(a, b) | a <- [0..], b <- [0..]]

main = do
    print $ take 10 intTuples
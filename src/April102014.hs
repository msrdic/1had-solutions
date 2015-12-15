module April102014 where

{- | onBothSide
   Apply the same argument on both side of a binary numeric function.

   The only interesting solution is point-free.

   It IS the easiest exercise so far, with the shortest solution.

   Examples:

   prop> onBothSide (+) x = x + x

   prop> onBothSide (*) x = x * x

-}

import Control.Applicative


onBothSide :: Num a => (a -> a -> b) -> a -> b
onBothSide f a = f a a

--onBothSides :: Num a => (a -> a -> b) -> a -> b
--onBothSides = foldr1 . fmap snd . replicate 2 . (,)

main = do
    print $ onBothSide (+) 7
    print $ onBothSide (*) 7
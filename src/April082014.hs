module April082014 where

{- | replicateF
   replicate and chain an endofunction

   Examples:

   prop> x + 10 == replicateF 10 (+1) x

   prop> 10 * x == replicateF 10 (+x) 0

   prop> replicate 10 x == replicateF 10 (x:) []
-}

replicateF :: Int -> (a -> a) -> a -> a
replicateF 0 f zero = zero
replicateF times f zero = replicateF (times - 1) f (f zero)

replicateF' :: Int -> (a -> a) -> a -> a
replicateF' times f zero = foldr (\fn elem -> fn elem) zero (replicate times f)

replicateA :: Int -> (a -> a) -> a -> a
replicateA times f zero = foldr ($) zero (replicate times f)

main = do
    print $ replicateF 10 (+1) 0 -- 10
    print $ replicateF 10 (+ 3) 0 -- 30
    print $ replicateF 10 (1:) [] -- [1,1,1,1,1,1,1,1,1,1]
    print $ replicateF' 10 (+1) 0 -- 10
    print $ replicateF' 10 (+ 3) 0 -- 30
    print $ replicateF' 10 (1:) [] -- [1,1,1,1,1,1,1,1,1,1]
    print $ replicateA 10 (+1) 0 -- 10
    print $ replicateA 10 (+ 3) 0 -- 30
    print $ replicateA 10 (1:) [] -- [1,1,1,1,1,1,1,1,1,1]
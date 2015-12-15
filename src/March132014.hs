module March132014 where

-- | pairToList Transform a pair of same type elements in a list of two
-- elements.
--
-- Of course, the major challenge is to find a point free function
-- (without lambda). And, if you want more fun, do it without (++).
--
-- additional challenge: don't use flip or reverse
--
-- prop> replicate 2 (x :: Int) == pairToList (x,x)
--
-- prop> (\(f,s) -> [f,s]) x == pairToList x
--

-- simple solution
pairToList :: (a,a) -> [a]
pairToList (f, s) = [f,s]

-- second
pairToList2 :: (a,a) -> [a]
pairToList2 p = fst p : [snd p]

-- third
pairToList3 :: (a,a) -> [a]
pairToList3 arg = map ($ arg) [fst, snd]

-- fourth
pairToList4 :: (a,a) -> [a]
pairToList4 arg = flip map [fst, snd] ($ arg)

main = do
    print $ pairToList (1, 2)
    print $ pairToList2 (1, 2)
    print $ pairToList3 (1, 2)
    print $ pairToList4 (1, 2)
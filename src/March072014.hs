module March072014 where
-- | trueIndexes produce an infinite list where only the index given in the list

-- in parameter are true.
-- The parameter list is supposed to be sorted set of positive numbers
--
-- Point-free: Probably hard to find!
-- Level: HARD
--
-- Examples:
-- >>> take 2 $ trueIndexes [1]
-- [False,True]
--
-- >>> take 6 $ trueIndexes [0,2,4]
-- [True,False,True,False,True,False]
--
-- >>> take 3 $ trueIndexes []
-- [False, False, False]
--
trueIndexes :: [Int] -> [Bool]
trueIndexes []     = repeat False
trueIndexes (x:xs)
  | null xs   = head ++ [True] ++ repeat False
  | otherwise = head ++ [True] ++ trueIndexes newInd
  where head   = replicate x False
        newInd = map (subtract offset) xs
        offset = x + 1
-- trueIndexes [x]    = replicate x False ++ [True] ++ repeat False
-- trueIndexes (x:xs) = replicate x False ++ [True] ++ trueIndexes (map (subtract (x + 1)) xs)

main = do
  print $ take 6 $ trueIndexes []
  print $ take 6 $ trueIndexes [2]
  print $ take 2 $ trueIndexes [1]
  print $ take 6 $ trueIndexes [0, 2, 4]
  print $ take 20 $ trueIndexes [0, 3 ..]
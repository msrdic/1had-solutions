module March172014 where

-- | maximumList replace each element in a list by its maximum so far
--
-- Examples:
--
-- >>> maximumList [1..4]
-- [1,2,3,4]
--
-- >>> maximumList [10,9..7]
-- [10,10,10,10]
--
-- prop> and . (zipWith (<=) <*> tail) . maximumList

maximumList :: Ord a => [a] -> [a]
maximumList [] = []
maximumList xs = maximumList' (head xs) xs

maximumList' :: Ord a => a -> [a] -> [a]
maximumList' _ [] = []
maximumList' max (x:xs)
  | max > x   = max:maximumList' max xs
  | otherwise = x:maximumList' x xs

main = do
    print $ take 10 $ maximumList [100, 99..]
    print $ maximumList [10, 9.. 7]
    print $ maximumList [1..4]
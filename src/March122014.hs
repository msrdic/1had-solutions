module March122014 where

-- | localMax Given an entry list, it outputs the its list of local maxima.
-- A Local maximum is a an element greater than its predecessor and than its
-- successor.
--
-- No point-free today, at least for my solution.
--
-- Examples:
--
-- >>> localMax [0 .. 1000]
-- []
--
-- >>> localMax [1000 .. 0]
-- []
--
-- >>> localMax [2,2,1,5,4]
-- [5]
--
-- >>> take 4 . localMax $ [0..] >>= (\y -> [y,y+2])
-- [2,3,4,5]
--
localMax :: Ord a => [a] -> [a]
-- | take lists of length 3, filter those by min criteria and take the middle element
localMax = map (!! 1) . filter hasMin . threes

threes :: [a] -> [[a]]
threes (x:y:z:rest) = [x,y,z] : threes (y:z:rest)
threes _ = []

hasMin :: Ord a => [a] -> Bool
hasMin [x,y,z] = y > x && y > z
hasMin _ = False

main = do
    print $ localMax [2,2,1,5,4] -- [5]
    print $ take 4 . localMax $ [0..] >>= (\y -> [y,y+2])
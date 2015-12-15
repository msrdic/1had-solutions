module April022014 where

-- | update update the nth element of a list
-- if the index is not a valid index, it leaves the list unchanged
--
-- Examples
--
-- >>> update (-2) 10 [0..4]
-- [0,1,2,3,4]
--
-- >>> update 6 10 [0..4]
-- [0,1,2,3,4]
--
-- >>> update 2 10 [0..4]
-- [0,1,10,3,4]
--
update :: Int -> a -> [a] -> [a]
update pos elem list
    | pos >= len || pos < 0 = list
    | otherwise             = take pos list ++ [elem] ++ drop (pos + 1) list
    where len = length list

main = do
    print $ update (-2) 10 [0..4]
    print $ update 6 10 [0..4]
    print $ update 2 10 [0..4]
    print $ update 4 10 [0..4]
    print $ update 0 10 [0..4]
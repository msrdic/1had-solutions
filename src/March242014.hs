module March242014 where

-- | squareList builds a list of x lists of size x from a given list of elements
-- If there aren't enough elements, fill the square with the second parameter
-- Examples:
--
-- >>> squareList 2  0 [0..]
-- [[0,1],[2,3]]
--
-- >>> squareList 2 0 [1]
-- [[1,0],[0,0]]
--
-- >>> squareList 3 () $ repeat ()
-- [[(),(),()],[(),(),()],[(),(),()]]
--
squareList :: Int -> a -> [a] -> [[a]] 
squareList size spare list = take size $ squareList' size (list ++ repeat spare)

squareList' :: Int -> [a] -> [[a]]
squareList' 0 _ = []
squareList' size list = head:tail where
    head = head'
    tail = squareList' size tail'
    (head', tail') = splitAt size list

main = do
    print $ squareList 2 0 [0..]
    print $ squareList 2 0 [1]
    print $ squareList 3 () $ repeat ()
    print $ squareList 4 0 []
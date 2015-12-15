module Jun022014 where

import qualified Data.Map as M
import qualified Data.List as L

{-| Count character occurences in a string

    Examples:
    >>> lookup 'l' $ countOccurences "hello"
    Just 2
    >>> lookup 'n' $ countOccurences "hello"
    Nothing
-}
countOccurences :: String -> M.Map Char Int
countOccurences s = M.fromList $ zip (L.sort s) [1..]

main = do
    print $ M.lookup 'l' $ countOccurences "hello"
    print $ M.lookup 'n' $ countOccurences "hello"
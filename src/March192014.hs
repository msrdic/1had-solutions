module March192014 where

-- $setup
-- >>> import Control.Applicative ((<*>))
-- >>> import Data.List (isInfixOf)
-- >>> import Test.QuickCheck

-- Level: Easy
-- Pointfree: yes


-- | mostRepeatedElem
-- Returns the element with the longest (consecutive) repetition and the
-- repetition number
-- If there are tie, the last most repeated element is returned
-- It returns error on empty string
--
-- Examples:
--
-- >>> mostRepeatedElem "hello world!"
-- ('l',2)
--
-- >>> mostRepeatedElem [1,1,2,2]
-- (2,2)
--
-- prop> (flip isInfixOf <*> uncurry (flip replicate) . mostRepeatedElem) . getNonEmpty

import Data.List
import Control.Applicative

mostRepeatedCmp :: Eq a => (a, Int) -> (a, Int) -> Ordering
mostRepeatedCmp (_, fc) (_, sc) = fc `compare` sc

mostRepeatedElem :: Eq a => [a] -> (a, Int)
mostRepeatedElem ls = maximumBy mostRepeatedCmp $ zip heads lengths
    where grouped      = group ls
          heads        = map head grouped
          lengths      = map length grouped

main = do
    print $ mostRepeatedElem "hello world"
    print $ mostRepeatedElem [1, 1, 2, 2]
    print $ mostRepeatedElem [1,1,1,3,3,3,6,6,6,9,9,9,9,9,9,1,1]
    print $ mostRepeatedElem [1,1,1,3,3,3,6,6,6,9,9,9,9,9,9,1,1,1,1,1,1,1,1]
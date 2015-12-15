module April292014 where

{- | Act like takeWhile but includes the element that fails the test

   >>> takeWhileWithFailure odd [1..4]
   [1,2]

   >>> takeWhileWithFailure odd [1,3,5]
   [1,3,5]

   >>> takeWhileWithFailure ((2 ==) . length)) ["hi", "world", "world", "world"]
   ["hi","world"]

   >>> takeWhileWithFailure (<5) [10..20]
   [10]
-}
takeWhileWithFailure :: (a -> Bool) -> [a] -> [a]
takeWhileWithFailure pred list = (:) (head . (dropWhile pred) $ list) (takeWhile pred list)

main = do
    print $ takeWhileWithFailure odd [1..4]
    print $ takeWhileWithFailure odd [1,3,5]
    print $ takeWhileWithFailure ((2 ==) . length) ["hi", "world", "world", "world"]
    print $ takeWhileWithFailure (<5) [10..20]
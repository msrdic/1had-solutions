module May052014 where

{- The first boolean list filter the elements that should be displayed in the second one

   Examples:

   >>> signalFilter [True,False,True] "hello"
   [Just 'h', Nothing, Just 'l']

   >>> signalFilter (repeat True) [1,2,3]
   [Just 1,Just 2,Just 3]

   prop> (take x $ signalFilter (repeat False) [1..]) == replicate x Nothing
-}
import Data.List
import Data.Maybe
import Control.Applicative
import System.Random.Shuffle

signalFilter :: [Bool] -> [a] -> [Maybe a]
signalFilter ind list = map (\(f, s) -> if f then (Just s) else Nothing) $ zip ind list

main = do
    print $ signalFilter [True, False, True] "hello"
    print $ signalFilter (repeat True) [1, 2, 3]
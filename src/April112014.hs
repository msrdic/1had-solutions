module April112014 where

-- | thirdOfFive
-- return the third of five arguments
--
-- No other interest than pointFree
--
-- prop> thirdOfFive 1 2 x 4 5 == x
--

import Control.Monad

thirdOfFive :: a -> b -> c -> d -> e -> c
thirdOfFive = (\_ _ x _ _ -> x)

main = do
    print $ (thirdOfFive 1 2 3 4 5) == 3
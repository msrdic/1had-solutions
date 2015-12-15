module April042014 where

-- | countFigures count the different figures that composes a number
--
-- Examples:
--
-- >>> countFigures 1
-- 1
-- >>> countFigures 1000000
-- 2
-- >>> countFigures 123
-- 3
-- >>> countFigures (-12)
-- 2
-- >>> countFigures 1234567890
-- 10
-- >>> countFigures 00001
-- 1
-- >>> countFigures 0
-- 1
--

import Data.List

countFigures :: Integral a => a -> Int
countFigures = length . group . sort . show . abs . fromIntegral

main = do
    print $ countFigures 1
    print $ countFigures 1000000
    print $ countFigures 123
    print $ countFigures (-12)
    print $ countFigures 1234567890
    print $ countFigures 0001
    print $ countFigures 0
module March312014 where

-- $setup
-- >>> import Control.Applicative

-- | emptyIndices List the indices of a list of maybes that contains Nothing
--
-- prop> (all (isNothing) .) . map . (!!) <*> emptyIndices $ xs
--

import Data.Maybe

emptyIndices :: [Maybe a] -> [Int]
emptyIndices = map fst . filter (isNothing . snd) . zip [0..]

main = do
    print $ emptyIndices []
    print $ emptyIndices [Just 1, Just 2, Just 3]
    print $ emptyIndices [Just 1, Nothing, Just 2, Nothing, Nothing]
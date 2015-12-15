{-# LANGUAGE ViewPatterns #-}
module April072014 where

{- | braid
   Braid two lists

   Examples:

   >>> braid [0,2] [1,3]
   [0,1,2,3]

   >>> braid [0,2] [1,3 ..]
   [0,1,2,3]

   >>> braid [0,2 ..] [1,3]
   [0,1,2,3]
-}

-- braid :: [a] -> [a] -> [a]

import Control.Applicative

-- concat $ (\a -> [fst a, snd a])  <$> uncurry zip ([1,2,3], [4,5,6])

braid :: [a] -> [a] -> [a]

tp :: [a] -> [a] -> ([a], [a])
tp = (,)

braid = undefined
-- braid = concat . map (\a -> [fst a, snd a]) . uncurry zip . tp

main = do
    print $ braid [0, 2] [1, 3]
    print $ braid [0, 2] [1, 3 ..]
    print $ braid [0, 2 ..] [1, 3]
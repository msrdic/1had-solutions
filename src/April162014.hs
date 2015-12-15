module April162014 where

{- | reverseMap
   No definition, look to types
-}

import Control.Applicative
import Control.Monad

reverseMap :: [a -> b] -> a -> [b]
reverseMap fs arg = map ($arg) fs

--reverseMap' :: [a -> b] -> a -> [b]
--reverseMap' = uncurry (<*>) . (<$>) pure . snd . (,)
--reverseMap' = (<*>) . (<$>) (:[]) . (,)

main = do
    print $ reverseMap [(+1), (+2), (+3)] 1 -- [2, 3, 4]
module April032014 where

-- | foo
-- Types. Powerful enough to get it right.
--

foo :: (a ->  b) -> [a] -> [(a, b)]
foo f list = zip list $ map f list
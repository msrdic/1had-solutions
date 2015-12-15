module March142014 where
-- $setup
-- >>> import Control.Applicative
-- >>> let s2 = ([id,(+1)] <*>) . pure

-- | groupByStraights Group elements in a list by "straights"
-- i.e: consecutive elements are grouped together.
--
-- Examples:
--
-- >>> groupByStraights [1,2,5,6,8]
-- [[1,2],[5,6],[8]]
--
-- >>> take 3 . groupByStraights $ [0..] >>= s2
-- [[0,1],[1,2],[2,3]]
--
-- >>> take 4 . groupByStraights $ "abbccddeeeeeeeeeee"
-- ["ab","bc","cd","de"]
--
groupByStraights :: [a] -> [[a]]
groupByStraights = undefined

main = print $ take 4 . groupByStraights $ "abbccddeee" -- ["ab","bc","cd","de"]
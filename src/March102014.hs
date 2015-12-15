module March102014 where

import Data.Char

-- $setup
-- >>> import Test.QuickCheck
-- >>> import Control.Applicative

-- | maybeReadPositiveInt Try to parse a positive Int
-- Can be done point-free (and it's probably funnier this way).
--
-- Examples:
--
-- prop> (==) <$> Just <*> maybeReadPositiveInt . show $ getNonNegative x
--
-- prop> Nothing == (maybeReadPositiveInt . show . negate . getPositive $ x)
--
-- >>> maybeReadPositiveInt "foo"
-- Nothing
--
-- >>> maybeReadPositiveInt "12 "
-- Nothing


maybeReadPositiveInt :: String -> Maybe Int
maybeReadPositiveInt str
  | allDigits str = return $ tryInt str
  | otherwise = Nothing

allDigits :: String -> Bool
allDigits "" = False
allDigits str = foldr ((&&) . isDigit) True str

tryInt str = read str :: Int

main = do
  print $ maybeReadPositiveInt "12" -- Just 12
  print $ maybeReadPositiveInt "-12" -- Nothing
  print $ maybeReadPositiveInt "12 a" -- Nothing
  print $ maybeReadPositiveInt "12 " -- Nothing
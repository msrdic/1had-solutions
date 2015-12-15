module March112014 where

import Data.Char

-- | lcAlphabetFrom
-- Display the alaphabet in lower cas, starting from the letter given in
-- parameter.
-- If the parameter is not a lowercase letter, displays the alphabet from 'a'
--
-- Point-free is quite easy
--
-- Examples:
--
-- >>> lcAlphabetFrom 'a'
-- "abcdefghijklmnopqrstuvwxyz"
--
-- >>> lcAlphabetFrom 'e'
-- "efghijklmnopqrstuvwxyzabcd"
--
-- >>> lcAlphabetFrom '`'
-- "abcdefghijklmnopqrstuvwxyz"
--
-- >>> lcAlphabetFrom '{'
-- "abcdefghijklmnopqrstuvwxyz"

lcAlphabetFrom :: Char -> String
lcAlphabetFrom c
  | isAsciiLower c = prettyAlphabet c
  | otherwise = ['a'..'z']

prettyAlphabet :: Char -> String
prettyAlphabet from = head ++ tail
  where head = [from .. 'z']
        tail = ['a' .. pred from]

main = do
  print $ lcAlphabetFrom 'a' -- "abcdefghijklmnopqrstuvwxyz"
  print $ lcAlphabetFrom 'e' -- "efghijklmnopqrstuvwxyzabcd"
  print $ lcAlphabetFrom '`' -- "abcdefghijklmnopqrstuvwxyz"
  print $ lcAlphabetFrom '{' -- "abcdefghijklmnopqrstuvwxyz"
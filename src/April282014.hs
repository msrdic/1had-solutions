module April282014 where

{-- splits
    Lists the possible splits of a list

   Examples
   >>> splits [1..4]
   [([],[1,2,3,4]),([1],[2,3,4]),([1,2],[3,4]),([1,2,3],[4]),([1,2,3,4],[])]

   >>> splits []
   [([],[])]

   >>> splits "hello"
   [("","hello"),("h","ello"),("he","llo"),("hel","lo"),("hell","o"),("hello","")]
--}

import Data.List

splits :: [a] -> [([a],[a])]
splits list = zip (heads list) (tails list)
    where heads = reverse.tails.reverse

main = do
    print $ splits [1..4]
    print $ splits ([] :: [Int])
    print $ splits "hello"
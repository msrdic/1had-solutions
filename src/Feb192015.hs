module Feb192015 where

import System.IO
import Data.List

type Word = String

aekl :: FilePath -> IO [String]
aekl dict = do
    contents <- readFile dict
    let words = lines contents
        candidates = filter (\w -> length w > 3) words
        sorted = map sort candidates
        worded = map nub sorted
        final = filter (== "aekl") worded
    return final

main = do
    words <- aekl "wordsEn.txt"
    print $ length words
    print words
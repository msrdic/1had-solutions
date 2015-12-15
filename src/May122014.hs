module May122014 where
    
{- Given an index find the nearest element that satisfies a property.
   Starting from the index n, the elements are checked in the following order:
   n, n+1, n-1, n+2, n-2...

   Examples:

   >>> findNearest (>100) 4 [200,1,150,2,4]
   Just 150

   >>> findNearest (`elem` [aeiouy]) 6 "Hello World"
   Just 'o'

   >>> findNearest even 5 [1,3..99]
   Nothing
-}

import Data.List

findNearest :: (a -> Bool) -> Int -> [a] -> Maybe a
findNearest condition index list = undefined

main = do
    print $ findNearest (>100) 4 [200,1,150,2,4] -- Just 150
    print $ findNearest (`elem` ['a', 'e', 'i', 'o', 'u', 'y']) 6 "Hello World" -- Just 'o'
    print $ findNearest even 5 [1,3..99] -- Nothing
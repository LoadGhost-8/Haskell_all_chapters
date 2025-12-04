module Main where

compareValues :: (Eq a, Ord a) => a -> a -> a
compareValues x y = if x >= y then x else y

main :: IO ()
main = do
    print (compareValues 10 7)
    print (compareValues 'a' 'z')

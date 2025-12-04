module Main where

pureAndApply :: IO ()
pureAndApply = do
    print (pure 5 :: Maybe Int)
    print (pure (+1) <*> Just 4)
    result <- (pure (+2) <*> pure 10 :: IO Int)
    print result

main :: IO ()
main = pureAndApply

module Main where

data Box a = Empty | Has a deriving Show

addN :: Num a => a -> Box a -> Box a
addN n Empty   = Empty
addN n (Has x) = Has (x + n)

main :: IO ()
main = do
    print (addN 5 (Has 10))
    print (addN 5 Empty)

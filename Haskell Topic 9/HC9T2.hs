module Main where

data Box a = Empty | Has a deriving Show

main :: IO ()
main = do
    let b1 = Empty :: Box Int
    let b2 = Has 10
    print b1
    print b2

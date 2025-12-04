module Main where

data Box a = Empty | Has a deriving Show

extract :: a -> Box a -> a
extract def Empty   = def
extract _   (Has x) = x

main :: IO ()
main = do
    print (extract 0 (Has 42))
    print (extract 0 Empty)

module Main where

data Shape a = Circle { color :: a, radius :: Float }
             | Rectangle { color :: a, width :: Float, height :: Float }
             deriving Show

main :: IO ()
main = do
    let c1 = Circle "Red" 5
    let r1 = Rectangle "Blue" 10 5
    print c1
    print r1

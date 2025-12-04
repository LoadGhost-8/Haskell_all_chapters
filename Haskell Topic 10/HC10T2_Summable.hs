module Main where

class Summable a where
  sumUp :: [a] -> a

instance Summable Int where
  sumUp = foldr (+) 0

main :: IO ()
main = do

  print $ sumUp ([1,2,3,4,5] :: [Int]) 
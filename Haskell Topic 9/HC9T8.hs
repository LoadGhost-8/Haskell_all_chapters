module Main where

data Sequence a = End | Node a (Sequence a) deriving Show

seq1 :: Sequence Int
seq1 = Node 1 (Node 2 (Node 3 End))

main :: IO ()
main = print seq1

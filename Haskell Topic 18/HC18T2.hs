module Main where

data Tree a = Empty | Node a (Tree a) (Tree a)
    deriving (Show)

instance Functor Tree where
    fmap _ Empty = Empty
    fmap f (Node x l r) = Node (f x) (fmap f l) (fmap f r)

main :: IO ()
main = do
    let tree = Node 5 (Node 3 Empty Empty) (Node 7 Empty Empty)
    putStrLn "HC18T2 Functor Tree:"
    print (fmap (+1) tree)

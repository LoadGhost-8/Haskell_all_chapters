module Main where

data Tree a = Empty | Node a (Tree a) (Tree a)
    deriving (Show)

instance Functor Tree where
    fmap _ Empty = Empty
    fmap f (Node x l r) = Node (f x) (fmap f l) (fmap f r)

incrementTreeValues :: Num a => Tree a -> Tree a
incrementTreeValues = fmap (+1)

main :: IO ()
main = do
    let tree = Node 1 (Node 2 Empty Empty) (Node 3 Empty Empty)
    putStrLn "HC18T3 incrementTreeValues:"
    print (incrementTreeValues tree)

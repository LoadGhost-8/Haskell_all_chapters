module Main where

data BST a = Empty | Node a (BST a) (BST a) deriving Show

insert :: Ord a => a -> BST a -> BST a
insert x Empty = Node x Empty Empty
insert x (Node y left right)
    | x < y     = Node y (insert x left) right
    | otherwise = Node y left (insert x right)

bst1 :: BST Int
bst1 = foldr insert Empty [5, 3, 7, 1, 4]

main :: IO ()
main = print bst1

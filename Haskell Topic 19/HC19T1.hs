
module Main where

data Pair a = Pair a a deriving (Show, Eq)

instance Functor Pair where
  fmap f (Pair x y) = Pair (f x) (f y)

instance Applicative Pair where
  pure x = Pair x x
  (Pair f g) <*> (Pair x y) = Pair (f x) (g y)

main = print $ (Pair (+1) (*2)) <*> Pair 3 4

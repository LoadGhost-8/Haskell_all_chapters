module Main where

newtype Wrapper a = Wrapper a deriving (Show)

instance Functor Wrapper where
    fmap f (Wrapper x) = Wrapper (f x)

instance Applicative Wrapper where
    pure = Wrapper
    (Wrapper f) <*> (Wrapper x) = Wrapper (f x)

main :: IO ()
main = do
    print (pure 5 :: Wrapper Int)
    print (Wrapper (+1) <*> Wrapper 10)

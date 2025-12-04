module Main where

data MyEither a b = MyLeft a | MyRight b
    deriving (Show)

instance Functor (MyEither a) where
    fmap _ (MyLeft x)  = MyLeft x
    fmap f (MyRight y) = MyRight (f y)

main :: IO ()
main = do
    putStrLn "HC18T5 Functor MyEither:"
    print (fmap (+1) (MyRight 10 :: MyEither String Int))
    print (fmap (+1) (MyLeft "Error" :: MyEither String Int))

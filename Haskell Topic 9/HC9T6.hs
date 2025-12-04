module Main where

data Tweet = Tweet { content :: String
                   , likes :: Int
                   , comments :: [Tweet]
                   } deriving Show

tweet1 :: Tweet
tweet1 = Tweet "Hello world!" 10 []

tweet2 :: Tweet
tweet2 = Tweet "Check this out!" 5 [tweet1]

main :: IO ()
main = do
    print tweet1
    print tweet2

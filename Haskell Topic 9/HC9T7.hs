module Main where

data Tweet = Tweet { content :: String
                   , likes :: Int
                   , comments :: [Tweet]
                   } deriving Show

engagement :: Tweet -> Int
engagement t = likes t + sum (map engagement (comments t))

tweet1 :: Tweet
tweet1 = Tweet "Hello" 10 []

tweet2 :: Tweet
tweet2 = Tweet "Check this out!" 5 [tweet1]

main :: IO ()
main = do
    print (engagement tweet1)
    print (engagement tweet2)

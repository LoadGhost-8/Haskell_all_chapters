module Main where

data Book = Book { title :: String
                 , author :: String
                 , year :: Int
                 } deriving Show

book1 :: Book
book1 = Book "Haskell Programming" "Khaya" 2023

main :: IO ()
main = print book1

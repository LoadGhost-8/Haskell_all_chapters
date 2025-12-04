
module Main where

counts :: String -> [(Char, Int)]
counts str = [(c, length (filter (== c) str)) | c <- removeDup str]
  where
    removeDup [] = []
    removeDup (x:xs) = x : removeDup (filter (/= x) xs)

main :: IO ()
main = print (counts "hello world")


{-# LANGUAGE TypeApplications #-}
module Main where

convert :: String -> Int
convert s = read @Int s

main :: IO ()
main = print (convert "42")

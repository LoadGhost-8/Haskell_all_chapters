module Main where
import HC17T8

main :: IO ()
main = print (foldWithSemigroup ["Hello", " ", "World"])

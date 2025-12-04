module Main where
import Data.Char (toLower)

mapToLower :: [Char] -> [Char]
mapToLower = fmap toLower

main :: IO ()
main = do
    putStrLn "HC18T1 mapToLower:"
    print (mapToLower "HELLO World")

module Main where
import HC17T4

main :: IO ()
main = do
    print (Sum 5 <> Sum 10 <> mempty)

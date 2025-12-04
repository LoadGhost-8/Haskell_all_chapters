module Main where
import HC17T2

main :: IO ()
main = do
    print (Min 5 <> Min 2)
    print (Max 5 <> Max 8)

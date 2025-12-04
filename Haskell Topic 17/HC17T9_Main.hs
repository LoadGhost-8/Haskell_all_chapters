module Main where
import HC17T9

main :: IO ()
main = do
    let c1 = Config 1 300 3
    let c2 = Config 3 150 5
    print (c1 <> c2)

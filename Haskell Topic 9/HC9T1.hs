module Main where

type Entity a = (String, a)  -- (name, address or other type)

main :: IO ()
main = do
    let e1 :: Entity Int
        e1 = ("Khaya", 101)
    let e2 :: Entity String
        e2 = ("prefina", "123 Main St")
    print e1
    print e2

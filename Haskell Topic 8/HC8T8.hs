module Main where

type Name = String
type Age = Int

greet :: Name -> Age -> String
greet n a = "Hello " ++ n ++ ", you are " ++ show a ++ " years old!"

main :: IO ()
main = do
    putStrLn (greet "Alice" 25)
    putStrLn (greet "Bob" 30)

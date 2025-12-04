module Main where

type Address = String
type Value = Int

generateTx :: Address -> Address -> Value -> String
generateTx from to val = from ++ " -> " ++ to ++ " : " ++ show val

main :: IO ()
main = do
    putStrLn (generateTx "Alice" "Bob" 100)

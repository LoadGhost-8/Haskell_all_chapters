module Main where

type Address = String
type Value = Int

data Transaction = Transaction { from :: Address
                               , to :: Address
                               , amount :: Value
                               , transactionId :: String
                               } deriving Show

createTransaction :: Address -> Address -> Value -> String
createTransaction f t v =
    let tid = f ++ "-" ++ t ++ "-" ++ show v
        _transaction = Transaction f t v tid
    in tid

main :: IO ()
main = do
    putStrLn (createTransaction "Khaya" "Moyo" 100)

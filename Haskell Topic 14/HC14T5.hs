module Main where

data Result a = Ok a | Error String deriving (Show)

describe :: Result Int -> String
describe r@(Ok x)    = "Success with value: " ++ show x ++ " from " ++ show r
describe r@(Error m) = "Error occurred: " ++ m ++ " from " ++ show r

main :: IO ()
main = do
    print (describe (Ok 10))
    print (describe (Error "Something went wrong"))

-- HC2T2 - Task 2: Function Type Signatures

add :: Int -> Int -> Int
add x y = x + y

isEven :: Int -> Bool
isEven n = n `mod` 2 == 0

concatStrings :: String -> String -> String
concatStrings a b = a ++ b

main :: IO ()
main = do
    print (add 5 3)
    print (isEven 4)
    print (concatStrings "Hello, " "Haskell!")

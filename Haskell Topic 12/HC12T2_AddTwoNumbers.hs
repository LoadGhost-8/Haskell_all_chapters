addTwoNumbers :: Int -> Int -> Int
addTwoNumbers x y = x + y

main :: IO ()
main = do
    putStrLn "Enter first number:"
    a <- getLine
    putStrLn "Enter second number:"
    b <- getLine
    let result = addTwoNumbers (read a) (read b)
    putStrLn ("The sum is: " ++ show result)

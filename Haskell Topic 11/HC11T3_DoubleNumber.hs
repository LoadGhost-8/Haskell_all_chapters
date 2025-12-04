main :: IO ()
main = do
    putStrLn "Enter a number:"
    input <- getLine
    let number = read input :: Double
    let result = number * 2
    putStrLn ("Double of your number is: " ++ show result)

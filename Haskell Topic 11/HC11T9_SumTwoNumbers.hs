-- HC11T9: Sum Two Numbers
main :: IO ()
main = do
    putStrLn "Enter first number:"
    a <- getLine
    putStrLn "Enter second number:"
    b <- getLine
    let sumAB = (read a :: Double) + (read b :: Double)
    putStrLn ("The sum is: " ++ show sumAB)

-- HC11T7: User Options
main :: IO ()
main = do
    putStrLn "Choose an option:"
    putStrLn "1. Greet"
    putStrLn "2. Add two numbers"
    putStrLn "3. Exit"
    choice <- getLine
    case choice of
        "1" -> do
            putStrLn "What is your name?"
            name <- getLine
            putStrLn ("Hello, " ++ name ++ "!")
        "2" -> do
            putStrLn "Enter first number:"
            a <- getLine
            putStrLn "Enter second number:"
            b <- getLine
            let sumAB = (read a :: Double) + (read b :: Double)
            putStrLn ("Sum: " ++ show sumAB)
        "3" -> putStrLn "Exiting..."
        _   -> putStrLn "Invalid option!"

main :: IO ()
main = do
    putStrLn "Enter text to reverse:"
    line <- getLine
    putStrLn ("Reversed: " ++ reverse line)

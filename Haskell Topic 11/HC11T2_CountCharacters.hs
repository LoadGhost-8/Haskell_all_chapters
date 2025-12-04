main :: IO ()
main = do
    putStrLn "Enter a line of text:"
    line <- getLine
    let count = length line
    putStrLn ("Number of characters: " ++ show count)

main :: IO ()
main = do
    putStrLn "Enter a number:"
    input <- getLine
    let num = read input :: Int
    if even num
        then putStrLn "The number is even."
        else putStrLn "The number is odd."

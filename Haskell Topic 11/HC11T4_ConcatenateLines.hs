main :: IO ()
main = do
    putStrLn "Enter first line:"
    line1 <- getLine
    putStrLn "Enter second line:"
    line2 <- getLine
    putStrLn ("Concatenated result: " ++ line1 ++ line2)

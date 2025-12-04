-- HC11T5: Repeat Until 'quit'
main :: IO ()
main = do
    putStrLn "Enter something (type 'quit' to stop):"
    loop
  where
    loop = do
        input <- getLine
        if input == "quit"
            then putStrLn "Goodbye!"
            else do
                putStrLn ("You entered: " ++ input)
                loop

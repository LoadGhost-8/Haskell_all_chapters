import Text.Read (readMaybe)

main = do
  putStrLn "Enter number:"
  s <- getLine
  case readMaybe s :: Maybe Int of
    Just n -> print (n+1)
    Nothing -> putStrLn "Invalid input."

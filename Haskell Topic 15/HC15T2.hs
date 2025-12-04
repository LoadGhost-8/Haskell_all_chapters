import Text.Read (readMaybe)

data Light = Red | Yellow | Green deriving (Show, Read)

react :: Light -> String
react Red    = "STOP"
react Yellow = "SLOW DOWN"
react Green  = "GO"

main = do
  putStrLn "Enter light color (Red, Yellow, Green):"
  c <- getLine
  case readMaybe c of
    Just l  -> putStrLn $ react l
    Nothing -> putStrLn "Invalid color!"

import Control.Exception

data TrafficError = InvalidLight String deriving Show
instance Exception TrafficError

parseLight :: String -> IO ()
parseLight s =
  case s of
    "Red" -> putStrLn "STOP"
    "Green" -> putStrLn "GO"
    "Yellow" -> putStrLn "SLOW"
    _ -> throwIO (InvalidLight s)

main = do
  putStrLn "Enter light:"
  s <- getLine
  parseLight s

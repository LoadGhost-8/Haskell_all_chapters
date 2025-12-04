import Control.Exception

data TrafficError = InvalidLight String deriving Show
instance Exception TrafficError

handler :: TrafficError -> IO ()
handler (InvalidLight s) =
  putStrLn ("Error: Invalid traffic light -> " ++ s)

main = do
  putStrLn "Light:"
  l <- getLine
  catch (check l) handler

check :: String -> IO ()
check "Red" = putStrLn "STOP"
check "Green" = putStrLn "GO"
check "Yellow" = putStrLn "SLOW"
check x = throwIO (InvalidLight x)

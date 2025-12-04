import Control.Exception
import Text.Read (readMaybe)

safeVel :: Double -> Double -> Either String Double
safeVel _ 0 = Left "Zero time"
safeVel d t = Right (d/t)

main = do
  putStrLn "Distance:"
  ds <- getLine
  putStrLn "Time:"
  ts <- getLine
  case (readMaybe ds, readMaybe ts) of
    (Just d, Just t) -> do
       case safeVel d t of
         Left e -> putStrLn e
         Right v -> print v
    _ -> putStrLn "Parsing error."

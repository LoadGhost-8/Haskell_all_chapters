import Text.Read (readMaybe)

velocity :: Double -> Double -> Maybe Double
velocity d t =
  if t == 0 then Nothing else Just (d/t)

main = do
  putStrLn "Distance:"
  ds <- getLine
  putStrLn "Time:"
  ts <- getLine
  case (readMaybe ds, readMaybe ts) of
    (Just d, Just t) ->
       print (velocity d t)
    _ -> putStrLn "Parse error."

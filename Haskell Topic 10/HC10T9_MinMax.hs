class MinMax a where
    minValue :: a
    maxValue :: a

instance MinMax Int where
    minValue = minBound :: Int
    maxValue = maxBound :: Int

main :: IO ()
main = do
    putStrLn "HC10T9: MinMax Type Class Example"
    putStrLn $ "Minimum Int: " ++ show (minValue :: Int)
    putStrLn $ "Maximum Int: " ++ show (maxValue :: Int)

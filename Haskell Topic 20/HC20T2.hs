sequenceMaybe :: [Maybe a] -> Maybe [a]
sequenceMaybe [] = Just []
sequenceMaybe (Nothing:_) = Nothing
sequenceMaybe (Just x:xs) = case sequenceMaybe xs of
    Just ys -> Just (x:ys)
    Nothing -> Nothing

main :: IO ()
main = do
    print (sequenceMaybe [Just 1, Just 2, Just 3])
    print (sequenceMaybe [Just 1, Nothing, Just 3])

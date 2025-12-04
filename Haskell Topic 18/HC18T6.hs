module Main where

applyToMaybe :: (a -> b) -> Maybe a -> Maybe b
applyToMaybe = fmap

main :: IO ()
main = do
    putStrLn "HC18T6 applyToMaybe:"
    print (applyToMaybe (*2) (Just 5))
    print (applyToMaybe (*2) Nothing)

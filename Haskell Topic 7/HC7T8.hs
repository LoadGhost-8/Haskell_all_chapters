module Main where

data Shape = Circle Double | Rectangle Double Double
    deriving (Show, Read)

parseShape :: String -> Maybe Shape
parseShape str = case reads str of
    [(shape, "")] -> Just shape
    _             -> Nothing

main :: IO ()
main = do
    print (parseShape "Circle 5")
    print (parseShape "Rectangle 3 4")
    print (parseShape "Invalid")

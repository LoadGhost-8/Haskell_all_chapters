module Main where

data Shape = Circle { center :: (Float, Float)
                    , color :: String
                    , radius :: Float
                    }
           | Rectangle { width :: Float
                       , height :: Float
                       , color :: String
                       } deriving Show

circle1 :: Shape
circle1 = Circle (0,0) "Red" 5

rect1 :: Shape
rect1 = Rectangle 10 5 "Blue"

main :: IO ()
main = do
    print circle1
    print rect1

module Main where

data Shape = Circle Double | Rectangle Double Double
    deriving (Show, Read)

class Describable a where
    describe :: a -> String

instance Describable Bool where
    describe True  = "The value is True"
    describe False = "The value is False"

instance Describable Shape where
    describe (Circle r) = "A circle with radius " ++ show r
    describe (Rectangle w h) = "A rectangle of width " ++ show w ++ " and height " ++ show h

main :: IO ()
main = do
    print (describe True)
    print (describe (Circle 5))

module Main where

data Color = Red | Green | Blue

instance Eq Color where
    Red   == Red   = True
    Green == Green = True
    Blue  == Blue  = True
    _ == _ = False

main :: IO ()
main = do
    print (Red == Red)
    print (Red == Green)

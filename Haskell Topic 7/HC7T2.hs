module Main where

data Color = Red | Green | Blue deriving (Eq, Show)

instance Ord Color where
    compare Red   Red   = EQ
    compare Red   _     = LT
    compare Green Red   = GT
    compare Green Green = EQ
    compare Green Blue  = LT
    compare Blue  Blue  = EQ
    compare Blue  _     = GT

main :: IO ()
main = do
    print (Red < Green)
    print (Green < Blue)
    print (Blue < Red)

module Main where

data Color = Red | Green | Blue
    deriving (Eq, Ord, Show, Enum, Bounded)

nextColor :: Color -> Color
nextColor c = if c == maxBound then minBound else succ c

main :: IO ()
main = do
    print (nextColor Red)
    print (nextColor Green)
    print (nextColor Blue)

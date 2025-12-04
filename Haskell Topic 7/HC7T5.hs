module Main where

squareArea :: Num a => a -> a
squareArea s = s * s

main :: IO ()
main = do
    print (squareArea 5)
    print (squareArea 4.2)

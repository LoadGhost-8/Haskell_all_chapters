module Main where

circleCircumference :: (Floating a) => a -> a
circleCircumference r = 2 * pi * r

main :: IO ()
main = do
    print (circleCircumference 5)
    print (circleCircumference 7.5)

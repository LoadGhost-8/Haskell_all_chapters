module Main where

sequenceApplicative :: [Maybe a] -> Maybe [a]
sequenceApplicative = sequenceA

main :: IO ()
main = do
    print (sequenceApplicative [Just 1, Just 2, Just 3])
    print (sequenceApplicative [Just 1, Nothing, Just 3])

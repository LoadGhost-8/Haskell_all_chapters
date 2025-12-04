module Main where

import Control.Applicative (liftA2)

combineResults :: Either String Int -> Either String Int -> Either String Int
combineResults = liftA2 (+)

main :: IO ()
main = do
    print (combineResults (Right 5) (Right 10))
    print (combineResults (Left "Error") (Right 10))

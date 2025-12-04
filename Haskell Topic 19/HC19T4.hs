module Main where

import Control.Applicative (liftA2)

liftAndMultiply :: (Int -> Int -> Int) -> Maybe Int -> Maybe Int -> Maybe Int
liftAndMultiply f a b = liftA2 f a b

main :: IO ()
main = do
    print (liftAndMultiply (*) (Just 3) (Just 4)) 
    print (liftAndMultiply (+) (Just 1) Nothing)   
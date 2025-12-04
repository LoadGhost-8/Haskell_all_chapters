
{-# LANGUAGE NumericUnderscores #-}
module Main where

main :: IO ()
main = do
    let big1 = 1_000_000
    let big2 = 2_500_000_000
    print big1
    print big2

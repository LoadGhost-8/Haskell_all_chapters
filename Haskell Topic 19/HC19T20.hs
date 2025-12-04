module Main where

import Control.Monad (forever)

replicateForever :: IO () -> IO b
replicateForever act = forever act

main :: IO ()
main = replicateForever (putStrLn "Running forever...")

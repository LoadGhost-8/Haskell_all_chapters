module Main where

import Control.Monad (forever)

repeatEffect :: IO () -> IO b
repeatEffect action = forever action

main :: IO ()
main = repeatEffect (putStrLn "Repeating...")

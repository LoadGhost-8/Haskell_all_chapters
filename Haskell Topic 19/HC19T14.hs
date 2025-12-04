module Main where

import Control.Monad (replicateM_)

replicateEffect :: Int -> IO a -> IO ()
replicateEffect n action = replicateM_ n action

main :: IO ()
main = replicateEffect 3 (putStrLn "Khaya")
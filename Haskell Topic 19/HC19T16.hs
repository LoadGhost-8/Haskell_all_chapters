module Main where

applyWithEffects :: IO (a -> b) -> IO a -> IO b
applyWithEffects f x = f <*> x

main :: IO ()
main = do
    res <- applyWithEffects (return (+5)) (return 10)
    print res

module Main where

applyEffects :: (IO Int, IO Int) -> IO ()
applyEffects (a, b) = do
    x <- a
    y <- b
    putStrLn ("First: " ++ show x)
    putStrLn ("Second: " ++ show y)
    putStrLn ("Sum: " ++ show (x + y))

main :: IO ()
main = applyEffects (return 5, return 10)

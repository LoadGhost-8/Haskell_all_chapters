module Main where

discardSecond :: Applicative f => f a -> f b -> f a
discardSecond = (<*)

main :: IO ()
main = do
    result <- discardSecond (putStrLn "First") (putStrLn "Second")
    return result

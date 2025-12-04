module Main where

sequenceEffects :: Applicative f => [f a] -> f [a]
sequenceEffects = sequenceA

main :: IO ()
main = do
    result <- sequenceEffects [print 1, print 2, print 3]
    print result

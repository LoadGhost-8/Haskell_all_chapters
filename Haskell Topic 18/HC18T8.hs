module Main where

identityLawCheck :: (Functor f, Eq (f a)) => f a -> Bool
identityLawCheck x = fmap id x == id x

main :: IO ()
main = do
    putStrLn "HC18T8 identityLawCheck:"
    print (identityLawCheck (Just 10))
    print (identityLawCheck [1,2,3])

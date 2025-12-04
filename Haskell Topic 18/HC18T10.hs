module Main where

nestedFmap :: (Functor f1, Functor f2) =>
    (a -> b) -> f1 (f2 a) -> f1 (f2 b)
nestedFmap = fmap . fmap

main :: IO ()
main = do
    putStrLn "HC18T10 nestedFmap:"
    print (nestedFmap (+1) (Just [1,2,3]))
    print (nestedFmap (toEnum :: Int -> Char) (Just (Just 65)))

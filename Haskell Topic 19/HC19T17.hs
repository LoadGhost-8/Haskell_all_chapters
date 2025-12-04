module Main where

simulateMaybeEffect
  :: (a -> b -> c -> d)
  -> Maybe a -> Maybe b -> Maybe c -> Maybe d
simulateMaybeEffect f a b c = f <$> a <*> b <*> c

main :: IO ()
main = do
    print (simulateMaybeEffect (\x y z -> x + y + z)
           (Just 1) (Just 2) (Just 3))

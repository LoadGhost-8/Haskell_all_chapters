module Main where

compositionLawCheck :: (Functor f, Eq (f c)) =>
    (b -> c) -> (a -> b) -> f a -> Bool
compositionLawCheck f g x =
    fmap (f . g) x == (fmap f . fmap g) x

main :: IO ()
main = do
    putStrLn "HC18T9 compositionLawCheck:"
    let f = (*2)
    let g = (+3)
    print (compositionLawCheck f g (Just 5))
    print (compositionLawCheck f g [1,2,3])

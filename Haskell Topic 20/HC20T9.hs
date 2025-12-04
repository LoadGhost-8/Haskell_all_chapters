import Data.Functor.Identity

replicateMonad :: Int -> a -> Identity [a]
replicateMonad n x = Identity (replicate n x)

main :: IO ()
main = print (runIdentity (replicateMonad 3 "Hi"))

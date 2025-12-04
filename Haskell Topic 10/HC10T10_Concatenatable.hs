class Concatenatable a where
    concatWith :: a -> a -> a

instance Concatenatable [Char] where
    concatWith a b = a ++ b

main :: IO ()
main = do
    putStrLn $ concatWith "Hello, " "world!"

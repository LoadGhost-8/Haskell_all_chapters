data Box a = Box a deriving (Show)

instance (Eq a) => Eq (Box a) where
    (Box x) == (Box y) = x == y

main :: IO ()
main = do
    print $ Box 5 == Box 5
    print $ Box 3 == Box 7

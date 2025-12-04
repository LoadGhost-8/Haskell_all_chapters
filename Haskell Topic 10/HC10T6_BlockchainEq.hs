data Blockchain = Bitcoin | Ethereum | Solana deriving (Show)

class Comparable a where
    compareWith :: a -> a -> Ordering

instance Comparable Blockchain where
    compareWith Bitcoin Bitcoin   = EQ
    compareWith Ethereum Ethereum = EQ
    compareWith Solana Solana     = EQ
    compareWith Bitcoin _         = LT
    compareWith Ethereum Solana   = LT
    compareWith Ethereum _        = GT
    compareWith Solana _          = GT

instance Eq Blockchain where
    (==) a b = compareWith a b == EQ
    (/=) a b = not (a == b)

main :: IO ()
main = do

    print $ Bitcoin == Bitcoin
    print $ Bitcoin /= Ethereum

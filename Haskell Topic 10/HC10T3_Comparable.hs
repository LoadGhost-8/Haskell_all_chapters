
data Blockchain = Bitcoin | Ethereum | Solana deriving (Show, Eq)

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

main :: IO ()
main = do
    print $ compareWith Bitcoin Ethereum
    print $ compareWith Solana Bitcoin

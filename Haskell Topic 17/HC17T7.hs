module HC17T7 where

newtype Product = Product { getProduct :: Int } deriving Show

instance Semigroup Product where
    Product a <> Product b = Product (a * b)

instance Monoid Product where
    mempty = Product 1

multiplyProducts :: [Product] -> Product
multiplyProducts = mconcat

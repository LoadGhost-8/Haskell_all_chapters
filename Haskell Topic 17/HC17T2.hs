module HC17T2 where

newtype Min a = Min { getMin :: a } deriving Show
newtype Max a = Max { getMax :: a } deriving Show

instance Ord a => Semigroup (Min a) where
    Min a <> Min b = Min (min a b)

instance Ord a => Semigroup (Max a) where
    Max a <> Max b = Max (max a b)

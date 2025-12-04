{-# LANGUAGE UndecidableInstances #-}

class Eq a => AdvancedEq a where
    compareEquality :: a -> a -> Bool
    compareEquality a b = a == b

instance Eq a => AdvancedEq a

main :: IO ()
main = do
    print $ compareEquality (5 :: Int) (5 :: Int)
    print $ compareEquality (4 :: Int) (7 :: Int)

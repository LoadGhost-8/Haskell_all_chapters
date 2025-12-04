module HC17T8 where

foldWithSemigroup :: Semigroup a => [a] -> a
foldWithSemigroup = foldr1 (<>)

module HC17T3 where

data Severity = Low | Medium | High | Critical
  deriving (Show, Eq, Ord)

instance Semigroup Severity where
    (<>) = max

instance Monoid Severity where
    mempty = Low

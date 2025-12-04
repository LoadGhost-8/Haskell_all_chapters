module HC17T1 where

data Severity = Low | Medium | High | Critical
  deriving (Show, Eq, Ord)

instance Semigroup Severity where
    (<>) :: Severity -> Severity -> Severity
    (<>) = max

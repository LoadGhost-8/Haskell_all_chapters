
module Main where
addThreeApplicative :: Maybe Int -> Maybe Int -> Maybe Int -> Maybe Int
addThreeApplicative mx my mz =
  (\x y z -> x + y + z) <$> mx <*> my <*> mz

main = do
  print $ addThreeApplicative (Just 1) (Just 2) (Just 3)
  print $ addThreeApplicative (Just 1) Nothing (Just 3)

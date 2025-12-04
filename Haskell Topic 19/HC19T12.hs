module Main where

sumThreeApplicative
  :: Either String Int -> Either String Int -> Either String Int -> Either String Int
sumThreeApplicative a b c = (\x y z -> x + y + z) <$> a <*> b <*> c

main :: IO ()
main = do
    print (sumThreeApplicative (Right 3) (Right 2) (Right 1))
    print (sumThreeApplicative (Right 3) (Left "Error") (Right 1))

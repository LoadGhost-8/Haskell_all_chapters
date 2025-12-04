module Main where

combineEitherResults
  :: Either String Int
  -> Either String Int
  -> Either String Int
  -> Either String Int
combineEitherResults a b c = (\x y z -> x + y + z) <$> a <*> b <*> c

main :: IO ()
main = do
    print (combineEitherResults (Right 5) (Right 5) (Right 5))
    print (combineEitherResults (Left "Error") (Right 5) (Right 5))

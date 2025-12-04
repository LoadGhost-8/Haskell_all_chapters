-- HC2T1 - Task 1: Checking Types in GHCi
-- Expected Types:
-- 42 :: Int
-- 3.14 :: Floating a => a (commonly Double)
-- "Haskell" :: String
-- 'Z' :: Char
-- True && False :: Bool

main :: IO ()
main = do
    print (42 :: Int)
    print (3.14 :: Double)
    print ("Haskell" :: String)
    print ('Z' :: Char)
    print (True && False)

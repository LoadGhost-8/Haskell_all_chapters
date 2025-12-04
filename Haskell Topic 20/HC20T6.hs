doubleMonad :: Maybe Int -> [Int]
doubleMonad Nothing = []
doubleMonad (Just x) = [x, x*2, x*3]

main :: IO ()
main = do
    print (doubleMonad (Just 5))
    print (doubleMonad Nothing)

elementExists :: Eq a => a -> [a] -> Bool
elementExists _ [] = False
elementExists e (x:xs)
    | e == x    = True
    | otherwise = elementExists e xs

main :: IO ()
main = do
    print (elementExists 3 [1,2,3,4])
    print (elementExists 'a' "hello")

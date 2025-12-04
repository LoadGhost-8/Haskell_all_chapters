reverseList :: [a] -> [a]
reverseList [] = []
reverseList (x:xs) = reverseList xs ++ [x]

main :: IO ()
main = do
    print (reverseList [1,2,3,4])
    print (reverseList "hello")

multiplyByFive :: Int -> Int
multiplyByFive = (*5)

main :: IO ()
main = do
    print (multiplyByFive 4)
    print (multiplyByFive 10)

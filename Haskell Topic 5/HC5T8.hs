addFive :: Int -> Int
addFive = (+5)

main :: IO ()
main = do
    print (addFive 10)
    print (addFive 3)

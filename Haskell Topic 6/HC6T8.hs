filterEven :: [Int] -> [Int]
filterEven = filter even

main :: IO ()
main = do
    print (filterEven [1..20])

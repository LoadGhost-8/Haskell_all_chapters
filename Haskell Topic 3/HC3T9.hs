maxOfThree :: Int -> Int -> Int -> Int
maxOfThree a b c =
    let m1 = max a b
        m2 = max m1 c
    in m2

main :: IO ()
main = do
    print (maxOfThree 10 20 15)
    print (maxOfThree 5 25 10)

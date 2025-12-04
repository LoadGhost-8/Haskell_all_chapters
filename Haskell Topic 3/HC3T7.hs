season :: Int -> String
season m
    | m == 12 || m == 1 || m == 2  = "Winter"
    | m == 3  || m == 4 || m == 5  = "Spring"
    | m == 6  || m == 7 || m == 8  = "Summer"
    | m == 9  || m == 10 || m == 11 = "Autumn"
    | otherwise = "Invalid month"

main :: IO ()
main = do
    print (season 3)
    print (season 7)
    print (season 11)

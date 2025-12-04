findFirst :: (a -> Bool) -> [a] -> Either String a
findFirst _ [] = Left "Not found"
findFirst f (x:xs) =
    if f x then Right x else findFirst f xs

main :: IO ()
main = do
    print (findFirst (>3) [1,2,3,4])
    print (findFirst (>10) [1,2,3])

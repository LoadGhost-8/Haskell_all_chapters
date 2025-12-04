filterEvens :: [Int] -> [Int]
filterEvens = filter even

main :: IO ()
main = do
    putStrLn "Even numbers from [1..10]:"
    print (filterEvens [1..10])

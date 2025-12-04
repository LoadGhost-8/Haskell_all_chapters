factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

main :: IO ()
main = do
    putStrLn "Factorial of 5:"
    print (factorial 5)

import SumNonEmpty

main :: IO ()
main = do
    let numbers = [1, 2, 3, 4, 5]
    putStrLn $ "Sum of non-empty list: " ++ show (sumNonEmpty numbers)
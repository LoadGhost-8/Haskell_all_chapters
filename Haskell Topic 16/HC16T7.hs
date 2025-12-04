elementExists :: Eq a => a -> [a] -> Bool
elementExists = elem

main :: IO ()
main = do
    putStrLn "Does 5 exist in [1..10]?"
    print (elementExists 5 [1..10])

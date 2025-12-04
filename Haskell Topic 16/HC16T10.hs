charFrequency :: String -> [(Char, Int)]
charFrequency [] = []
charFrequency (x:xs) =
    (x, 1 + length (filter (== x) xs)) :
    charFrequency (filter (/= x) xs)

main :: IO ()
main = do
    putStrLn "Character frequency of 'banana':"
    print (charFrequency "banana")

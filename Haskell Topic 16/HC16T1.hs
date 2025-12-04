reverseString :: String -> String
reverseString = reverse

main :: IO ()
main = do
    putStrLn "Reversed string of 'hello':"
    print (reverseString "hello")

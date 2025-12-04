isPalindrome :: String -> Bool
isPalindrome str = str == reverse str

main :: IO ()
main = do
    putStrLn "Is 'racecar' a palindrome?"
    print (isPalindrome "racecar")

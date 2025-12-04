isPalindrome :: String -> Bool
isPalindrome str = str == reverse str

main :: IO ()
main = do
    putStrLn "Enter a word or phrase:"
    input <- getLine
    if isPalindrome input
        then putStrLn "It is a palindrome!"
        else putStrLn "It is not a palindrome."

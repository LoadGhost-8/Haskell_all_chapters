validatePassword :: String -> Either String String
validatePassword p =
    if length p < 6 then Left "Too short"
    else if not (any (`elem` ['0'..'9']) p) then Left "No digit"
    else Right "Valid"

main :: IO ()
main = do
    print (validatePassword "abc")
    print (validatePassword "abcdef")
    print (validatePassword "abc123")

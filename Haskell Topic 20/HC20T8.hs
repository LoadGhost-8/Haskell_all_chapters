newtype Parser a = Parser { runParser :: String -> [(a,String)] }

item :: Parser Char
item = Parser $ \input -> case input of
    [] -> []
    (x:xs) -> [(x,xs)]

digit :: Parser Char
digit = Parser $ \input -> case input of
    (x:xs) | x >= '0' && x <= '9' -> [(x,xs)]
    _ -> []

main :: IO ()
main = print (runParser digit "5abc")

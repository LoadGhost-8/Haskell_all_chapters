import Data.Char (toUpper)

toUppercase :: String -> String
toUppercase = map toUpper

main :: IO ()
main = do
    putStrLn "Uppercase of 'khaya':"
    print (toUppercase "khaya")

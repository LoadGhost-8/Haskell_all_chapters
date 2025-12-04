import Data.Char (toUpper)

main :: IO ()
main = do
    putStrLn "Enter text to convert to uppercase:"
    line <- getLine
    putStrLn (map toUpper line)

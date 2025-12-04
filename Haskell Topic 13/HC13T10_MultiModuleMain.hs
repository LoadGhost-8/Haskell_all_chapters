import System.Directory
import Data.List

main :: IO ()
main = do
    putStrLn "Enter search substring:"
    substring <- getLine
    files <- listDirectory "."
    let result = sort (filter (isInfixOf substring) files)
    putStrLn "Sorted search results:"
    mapM_ putStrLn result

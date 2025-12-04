import System.Directory
import Data.List

main :: IO ()
main = do
    putStrLn "Enter substring to filter filenames:"
    substring <- getLine
    files <- listDirectory "."
    let filtered = sort (filter (isInfixOf substring) files)
    putStrLn "Sorted filtered files:"
    mapM_ putStrLn filtered

import System.Directory
import Data.List

main :: IO ()
main = do
    putStrLn "Enter substring to filter filenames:"
    substring <- getLine
    files <- listDirectory "."
    let filtered = filter (isInfixOf substring) files
    putStrLn "Filtered files:"
    mapM_ putStrLn filtered

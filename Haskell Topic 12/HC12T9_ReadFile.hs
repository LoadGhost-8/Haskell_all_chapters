import System.IO
import Control.Exception

main :: IO ()
main = do
    putStrLn "Enter filename to read:"
    filename <- getLine
    result <- try (readFile filename) :: IO (Either IOError String)
    case result of
        Left _ -> putStrLn "Error: File not found or cannot be read."
        Right content -> putStrLn ("File content:\n" ++ content)

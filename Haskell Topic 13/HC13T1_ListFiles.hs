import System.Directory

main :: IO ()
main = do
    putStrLn "Files in current directory:"
    files <- listDirectory "."
    mapM_ putStrLn files

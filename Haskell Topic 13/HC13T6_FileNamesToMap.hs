import qualified Data.Map as Map
import System.Directory
import Data.List

main :: IO ()
main = do
    files <- listDirectory "."
    let fileMap = Map.fromList (zip [1..] files)
    putStrLn "Files mapped by index:"
    mapM_ print (Map.toList fileMap)

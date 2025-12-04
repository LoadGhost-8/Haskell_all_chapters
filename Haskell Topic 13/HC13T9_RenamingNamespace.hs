import qualified Data.List as Ls
import qualified Data.Map as Mp

main :: IO ()
main = do
    let names = ["apple", "banana", "cherry"]
    let sorted = Ls.sort names
    let mapped = Mp.fromList (zip [1..] sorted)
    putStrLn "Sorted names:"
    print sorted
    putStrLn "Mapped names:"
    print mapped

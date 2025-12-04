import qualified Data.List as L
import qualified Data.Map as M

main :: IO ()
main = do
    let list = [1, 2, 3]
    let doubled = L.map (*2) list
    let mapped = M.fromList [(1, "A"), (2, "B")]
    print doubled
    print mapped

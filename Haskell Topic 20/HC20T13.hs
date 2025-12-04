import Control.Monad.State
import qualified Data.Map as M

fib :: Int -> State (M.Map Int Int) Int
fib n = do
    memo <- get
    case M.lookup n memo of
        Just v -> return v
        Nothing -> do
            val <- if n < 2 then return n else do
                a <- fib (n-1)
                b <- fib (n-2)
                return (a+b)
            modify (M.insert n val)
            return val

main :: IO ()
main = print (evalState (fib 10) M.empty)

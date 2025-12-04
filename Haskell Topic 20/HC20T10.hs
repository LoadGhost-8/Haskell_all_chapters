import Control.Monad.State
import Control.Monad.Trans.Maybe

example :: StateT Int Maybe Int
example = do
    n <- get
    if n > 0 then return (n*2) else lift Nothing

main :: IO ()
main = do
    print (runStateT example 5)
    print (runStateT example 0)

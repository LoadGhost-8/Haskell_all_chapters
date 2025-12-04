import Control.Monad.Trans.Maybe
import Control.Monad.IO.Class

getInput :: MaybeT IO String
getInput = do
    line <- liftIO getLine
    if null line then MaybeT (return Nothing) else return line

main :: IO ()
main = do
    result <- runMaybeT getInput
    print result

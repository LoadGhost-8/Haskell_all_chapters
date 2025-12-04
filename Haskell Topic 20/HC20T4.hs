import Control.Monad.State
import Control.Monad (when)

countChars :: Char -> String -> Int
countChars c str = execState (mapM_ step str) 0
  where
    step x = when (x == c) (modify (+1))

main :: IO ()
main = print (countChars 'a' "banana")

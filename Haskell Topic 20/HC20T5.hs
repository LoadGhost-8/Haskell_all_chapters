import Control.Monad.Reader

greet :: Reader String String
greet = do
    name <- ask
    return ("Hello, " ++ name)

main :: IO ()
main = print (runReader greet "Khaya")

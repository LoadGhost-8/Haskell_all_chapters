import Control.Monad.Writer

add :: Int -> Int -> Writer [String] Int
add x y = do
    tell ["Adding numbers"]
    return (x+y)

main :: IO ()
main = do
    let (result, logMsgs) = runWriter (add 3 5)
    print result
    print logMsgs

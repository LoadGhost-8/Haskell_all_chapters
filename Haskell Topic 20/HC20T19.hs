import Control.Monad.Writer

logCall :: String -> Writer [String] ()
logCall msg = tell [msg]

main :: IO ()
main = print (runWriter (logCall "Started" >> logCall "Finished"))

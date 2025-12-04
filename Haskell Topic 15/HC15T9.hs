import Control.Exception
import System.IO.Error

main = do
  r <- try (readFile "missing.txt") :: IO (Either IOError String)
  case r of
    Left _ -> putStrLn "File error."
    Right content -> putStrLn content

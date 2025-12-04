module Main where
import HC17T10

main :: IO ()
main = do
    let empty = mempty
    let cfg = Config 3 200 4
    print (empty <> cfg)

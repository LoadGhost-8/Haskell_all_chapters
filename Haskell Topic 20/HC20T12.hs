main :: IO ()
main = do
    content <- readFile "HC20T5.hs"
    mapM_ putStrLn (lines content)

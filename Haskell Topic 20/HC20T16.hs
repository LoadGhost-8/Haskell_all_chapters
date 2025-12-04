retryIO :: Int -> IO a -> IO (Maybe a)
retryIO 0 _ = return Nothing
retryIO n action = do
    result <- action
    return (Just result)

main :: IO ()
main = print =<< retryIO 3 (return "Ok")

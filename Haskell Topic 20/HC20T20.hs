batchProcessing :: [IO a] -> IO [a]
batchProcessing = foldr (\action rest -> do
    x <- action
    xs <- rest
    return (x:xs)) (return [])

main :: IO ()
main = do
    result <- batchProcessing [print "A", print "B", print "C"]
    print result

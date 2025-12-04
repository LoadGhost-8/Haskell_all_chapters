transformList :: (a -> a) -> [a] -> [a]
transformList f = map (f . f)

main :: IO ()
main = do
    print (transformList (+1) [1,2,3])
    print (transformList (*2) [1,2,3])

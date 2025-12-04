mapMFilter :: Monad m => (a -> m Bool) -> [a] -> m [a]
mapMFilter _ [] = return []
mapMFilter p (x:xs) = do
    keep <- p x
    rest <- mapMFilter p xs
    return (if keep then x:rest else rest)

main :: IO ()
main = print =<< mapMFilter (\x -> return (x>2)) [1,2,3,4]

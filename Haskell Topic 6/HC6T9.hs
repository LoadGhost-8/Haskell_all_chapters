myMap :: (a -> b) -> [a] -> [b]
myMap _ [] = []
myMap f (x:xs) = f x : myMap f xs

main :: IO ()
main = do
    print (myMap (+1) [1,2,3])
    print (myMap (*2) [4,5,6])

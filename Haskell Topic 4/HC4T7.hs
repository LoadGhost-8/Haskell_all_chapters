firstAndThird :: [a] -> [a]
firstAndThird (x:_:z:_) = [x, z]
firstAndThird _          = []

main :: IO ()
main = do
    print (firstAndThird [10,20,30,40])
    print (firstAndThird [1,2])
    print (firstAndThird [5,6,7,8,9])

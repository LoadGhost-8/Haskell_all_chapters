describeTuple :: (String, Int) -> String
describeTuple (name, age) = "Name: " ++ name ++ ", Age: " ++ show age

main :: IO ()
main = do
    print (describeTuple ("Khaya", 25))
    print (describeTuple ("Ghost", 42))

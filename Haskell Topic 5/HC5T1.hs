applyThrice :: (Int -> Int) -> Int -> Int
applyThrice f x = f (f (f x))

main :: IO ()
main = do
    print (applyThrice (+1) 5)
    print (applyThrice (*2) 3)

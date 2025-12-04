-- HC1T8 - Task 8: Higher-Order Functions
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

main :: IO ()
main = print (applyTwice (*2) 3)

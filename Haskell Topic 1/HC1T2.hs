-- HC1T2 - Task 2: Pure Function Example
circleArea :: Floating a => a -> a
circleArea r = pi * r ^ 2

main :: IO ()
main = print (circleArea 5)

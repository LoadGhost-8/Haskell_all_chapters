-- HC2T5 - Task 5: Defining and Using Functions

circleArea :: Float -> Float
circleArea r = pi * r * r

maxOfThree :: Int -> Int -> Int -> Int
maxOfThree a b c = max a (max b c)

main :: IO ()
main = do
    print (circleArea 5)
    print (maxOfThree 10 25 15)

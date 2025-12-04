calculateCircleArea :: Floating a => a -> a
calculateCircleArea r = pi * r * r

main :: IO ()
main = do
    putStrLn "Enter the radius of the circle:"
    input <- getLine
    let radius = read input :: Double
    putStrLn ("Area of the circle: " ++ show (calculateCircleArea radius))

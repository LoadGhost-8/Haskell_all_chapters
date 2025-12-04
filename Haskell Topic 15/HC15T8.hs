safeDivE :: Double -> Double -> Either String Double
safeDivE _ 0 = Left "Division by zero"
safeDivE a b = Right (a/b)

main = print (safeDivE 5 0)

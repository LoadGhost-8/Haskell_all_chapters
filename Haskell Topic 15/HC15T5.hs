safeDiv :: Double -> Double -> Maybe Double
safeDiv _ 0 = Nothing
safeDiv a b = Just (a/b)

main = print (safeDiv 10 0)

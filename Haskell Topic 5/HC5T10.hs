checkSquaresOver50 :: [Int] -> Bool
checkSquaresOver50 = any (>50) . map (^2) . filter (>0)

main :: IO ()
main = do
    print (checkSquaresOver50 [3,4,6,8])
    print (checkSquaresOver50 [1,2,3])

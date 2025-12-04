grade :: Int -> String
grade score
    | score >= 90 = "A"
    | score >= 80 = "B"
    | score >= 70 = "C"
    | score >= 60 = "D"
    | otherwise   = "F"

main :: IO ()
main = do
    print (grade 95)
    print (grade 72)
    print (grade 50)

evenSquares :: [Int] -> [Int]
evenSquares = filter even . map (^2)

main :: IO ()
main = do
    print (evenSquares [1..10])

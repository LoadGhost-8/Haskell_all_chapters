checkNumber :: Int -> String
checkNumber n =
    if n > 0 then "Positive"
    else if n < 0 then "Negative"
    else "Zero"

main :: IO ()
main = do
    print (checkNumber 5)
    print (checkNumber (-3))
    print (checkNumber 0)

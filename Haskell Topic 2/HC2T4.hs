-- HC2T4 - Task 4: Converting Between Infix and Prefix Notations

-- Prefix versions
prefix1 = (+) 5 3
prefix2 = (*) 10 4
prefix3 = (&&) True False

-- Infix versions
infix1 = 7 + 2
infix2 = 6 * 5
infix3 = True && False

main :: IO ()
main = do
    print prefix1
    print prefix2
    print prefix3
    print infix1
    print infix2
    print infix3

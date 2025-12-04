-- HC2T7 - Task 7: Boolean Expressions

expr1 = True && (5 > 3)   -- True
expr2 = False || (3 > 5)  -- False
expr3 = not False         -- True
expr4 = 10 < 5            -- False

main :: IO ()
main = do
    print expr1
    print expr2
    print expr3
    print expr4

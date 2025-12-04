-- HC2T3 - Task 3: Immutable Variables

myAge :: Int
myAge = 22

piValue :: Double
piValue = 3.14159

greeting :: String
greeting = "Hello, Haskell!"

isHaskellFun :: Bool
isHaskellFun = True

-- If you try to reassign myAge = 23, you’ll get an error because variables in Haskell are immutable.

main :: IO ()
main = do
    print myAge
    print piValue
    print greeting
    print isHaskellFun

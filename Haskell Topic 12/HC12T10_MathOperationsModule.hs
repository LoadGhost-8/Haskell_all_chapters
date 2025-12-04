module HC12T10_MathOperationsModule
    ( add
    , subtract'
    , multiply
    , divide
    , factorial
    ) where

-- Basic operations
add :: Int -> Int -> Int
add x y = x + y

subtract' :: Int -> Int -> Int
subtract' x y = x - y

multiply :: Int -> Int -> Int
multiply x y = x * y

divide :: Int -> Int -> Maybe Int
divide _ 0 = Nothing
divide x y = Just (x `div` y)

-- Factorial using recursion
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

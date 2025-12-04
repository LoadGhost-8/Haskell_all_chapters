module Main where

import HC12T10_MathOperationsModule

main :: IO ()
main = do
    putStrLn "HC12T10: Mathematical Operations Module Demo"
    putStrLn $ "Addition (5 + 3): " ++ show (add 5 3)
    putStrLn $ "Subtraction (10 - 4): " ++ show (subtract' 10 4)
    putStrLn $ "Multiplication (6 * 7): " ++ show (multiply 6 7)
    putStrLn $ "Division (20 / 5): " ++ show (divide 20 5)
    putStrLn $ "Division (20 / 0): " ++ show (divide 20 0)
    putStrLn $ "Factorial (8!): " ++ show (factorial 8)
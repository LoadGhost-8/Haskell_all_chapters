module Main where
import HC17T6

main :: IO ()
main = print (maxSeverity [Low, Medium, High, Critical, Medium])

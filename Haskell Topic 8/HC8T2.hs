module Main where

data PaymentMethod = Cash | Card | Cryptocurrency deriving Show

data Person = Person { name :: String
                     , address :: (String, Int)
                     , paymentMethod :: PaymentMethod
                     } deriving Show

bob :: Person
bob = Person "Bob" ("123 Main St", 101) Cash

main :: IO ()
main = print bob

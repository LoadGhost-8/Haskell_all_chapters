data PaymentMethod = Cash | CreditCard | PayPal deriving (Show)

class Convertible a b where
    convert :: a -> b

instance Convertible PaymentMethod String where
    convert Cash       = "Cash"
    convert CreditCard = "Credit Card"
    convert PayPal     = "PayPal"

main :: IO ()
main = do
    putStrLn $ "Converted value: " ++ convert CreditCard

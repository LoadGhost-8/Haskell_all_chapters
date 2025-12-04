
data PaymentMethod = Cash | CreditCard | PayPal deriving (Eq)

-- Define the ShowSimple type class
class ShowSimple a where
    showSimple :: a -> String

-- Implement the ShowSimple instance for PaymentMethod
instance ShowSimple PaymentMethod where
    showSimple Cash        = "Cash Payment"
    showSimple CreditCard  = "Credit Card Payment"
    showSimple PayPal      = "PayPal Payment"

main :: IO ()
main = do
    putStrLn $ "Cash -> " ++ showSimple Cash
    putStrLn $ "CreditCard -> " ++ showSimple CreditCard
    putStrLn $ "PayPal -> " ++ showSimple PayPal

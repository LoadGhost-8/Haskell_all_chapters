import Data.Char (isUpper)

hasUppercaseStart :: [String] -> Bool
hasUppercaseStart wordsList = any (\w -> not (null w) && isUpper (head w)) wordsList

main :: IO ()
main = do
    print (hasUppercaseStart ["apple", "Banana", "cherry"])
    print (hasUppercaseStart ["dog", "cat"])

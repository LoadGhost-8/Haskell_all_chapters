-- HC2T6 - Task 6: Understanding Int vs Integer

smallNumber :: Int
smallNumber = 262

bigNumber :: Integer
bigNumber = 2127

-- Try evaluating 2^64 :: Int in GHCi, it may overflow depending on your system.

main :: IO ()
main = do
    print smallNumber
    print bigNumber

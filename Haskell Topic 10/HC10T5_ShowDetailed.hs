data User = User { username :: String, age :: Int } deriving (Show)

class ShowDetailed a where
    showDetailed :: a -> String

instance ShowDetailed User where
    showDetailed (User uname a) =
        "User Details:\n - Name: " ++ uname ++ "\n - Age: " ++ show a

main :: IO ()
main = do

    putStrLn $ showDetailed (User "Khaya" 22)

import System.Random (randomRIO)

main :: IO ()
main = do
    num <- randomRIO (1, 100)  -- random number between 1 and 100
    putStrLn $ "Your random number is: " ++ show num

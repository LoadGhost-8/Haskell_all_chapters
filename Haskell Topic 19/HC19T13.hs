module Main where

whenApplicative :: Bool -> IO () -> IO ()
whenApplicative True act  = act
whenApplicative False _   = return ()

main :: IO ()
main = do
    whenApplicative True (putStrLn "Runs!")
    whenApplicative False (putStrLn "Does not run")

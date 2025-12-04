import Control.Exception
import Text.Read (readMaybe)

main :: IO ()
main = do
  putStrLn "Enter file name:"
  f <- getLine
  content <- catch (readFile f) handler
  putStrLn "File content:"
  putStrLn content

  putStrLn "Enter distance:"
  dStr <- getLine
  putStrLn "Enter time:"
  tStr <- getLine

  case (readMaybe dStr, readMaybe tStr) of
    (Just d, Just t) ->
       if t == 0 then putStrLn "Time cannot be zero!"
       else print (d / t :: Double)
    _ -> putStrLn "Invalid numeric input."

handler :: IOException -> IO String
handler _ = return "Error: Cannot read file."

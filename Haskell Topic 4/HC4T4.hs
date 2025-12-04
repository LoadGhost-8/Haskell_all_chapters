specialBirthday :: Int -> String
specialBirthday 1  = "First birthday - how cute!"
specialBirthday 18 = "Wow, you're officially an adult!"
specialBirthday 21 = "Cheers to 21!"
specialBirthday 50 = "Half a century old!"
specialBirthday _  = "Just another birthday."

main :: IO ()
main = do
    print (specialBirthday 1)
    print (specialBirthday 21)
    print (specialBirthday 33)

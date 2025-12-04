module Main where

data Shape = Circle Double | Rectangle Double Double

instance Show Shape where
    show (Circle r) = "Circle " ++ show r
    show (Rectangle w h) = "Rectangle " ++ show w ++ " " ++ show h

instance Read Shape where
    readsPrec _ input =
        case words input of
            ["Circle", r] -> [(Circle (read r), "")]
            ["Rectangle", w, h] -> [(Rectangle (read w) (read h), "")]
            _ -> []

main :: IO ()
main = do
    print (Circle 5)
    print (Rectangle 3 4)
    print (read "Circle 10" :: Shape)

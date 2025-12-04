import Numeric (showHex)

rgbToHex :: (Int, Int, Int) -> String
rgbToHex (r, g, b) =
    let toHex x = let h = showHex x "" in if length h == 1 then '0':h else h
    in "#" ++ toHex r ++ toHex g ++ toHex b

main :: IO ()
main = do
    print (rgbToHex (255, 0, 127))
    print (rgbToHex (0, 255, 64))

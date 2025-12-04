gradeComment :: Int -> String
gradeComment n
  | n >= 90 && n <= 100 = "Excellent!"
  | n >= 70 && n <= 89  = "Good job!"
  | n >= 50 && n <= 69  = "You passed."
  | n >= 0  && n <= 49  = "Better luck next time."
  | otherwise            = "Invalid grade"

main :: IO ()
main = do
    print (gradeComment 95)
    print (gradeComment 75)
    print (gradeComment 55)
    print (gradeComment 10)
    print (gradeComment 120)

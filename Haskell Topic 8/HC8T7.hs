module Main where

data Animal = Dog String | Cat String

describeAnimal :: Animal -> String
describeAnimal (Dog name) = "Dog named " ++ name
describeAnimal (Cat name) = "Cat named " ++ name

dog1 :: Animal
dog1 = Dog "Buddy"

cat1 :: Animal
cat1 = Cat "Whiskers"

main :: IO ()
main = do
    putStrLn (describeAnimal dog1)
    putStrLn (describeAnimal cat1)

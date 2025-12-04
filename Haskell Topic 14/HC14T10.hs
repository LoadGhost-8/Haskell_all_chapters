
module Main where
import Test.HUnit
import Counts

main :: IO ()
main = do
    let tests = TestList [
            "test1" ~: counts "hello" ~?= [('h',1),('e',1),('l',2),('o',1)]
            ]
    runTestTT tests
    return ()

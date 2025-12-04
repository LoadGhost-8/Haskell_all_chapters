{-# LANGUAGE PartialTypeSignatures #-}
{-# OPTIONS_GHC -fno-warn-partial-type-signatures #-}
module Main where

demo :: _ -> _
demo x = x + 5

main :: IO ()
main = print (demo 10)

module Main where

data Sequence a = End | Node a (Sequence a)

elemSeq :: Eq a => a -> Sequence a -> Bool
elemSeq _ End         = False
elemSeq x (Node y ys) = x == y || elemSeq x ys

seq1 :: Sequence Int
seq1 = Node 1 (Node 2 (Node 3 End))

main :: IO ()
main = do
    print (elemSeq 2 seq1)
    print (elemSeq 5 seq1)

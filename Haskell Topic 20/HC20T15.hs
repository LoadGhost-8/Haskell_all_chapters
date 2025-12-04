data Tree a = Leaf a | Node (Tree a) (Tree a)

newtype SumM a = SumM { runSumM :: a }

treeSum :: Tree Int -> Int
treeSum (Leaf x) = x
treeSum (Node l r) = treeSum l + treeSum r

main :: IO ()
main = print (treeSum (Node (Leaf 3) (Node (Leaf 2) (Leaf 5))))

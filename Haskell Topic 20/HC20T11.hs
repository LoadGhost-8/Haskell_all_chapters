import Control.Monad.State

randomWalk :: [(Int,Int)] -> State (Int,Int) [(Int,Int)]
randomWalk [] = return []
randomWalk ((dx,dy):steps) = do
    (x,y) <- get
    let pos = (x+dx, y+dy)
    put pos
    rest <- randomWalk steps
    return (pos:rest)

main :: IO ()
main = print (evalState (randomWalk [(1,0),(0,1),(1,1)]) (0,0))

import Control.Monad

type KnightPos = (Int, Int)

moveKnight :: KnightPos -> [KnightPos]
moveKnight (c,r) = do
  (c',r') <- [(c+2,r-1),(c+2,r+1),(c-2,r-1),(c-2,r+1)
               ,(c+1,r-2),(c+1,r+2),(c-1,r-2),(c-1,r+2)
               ]
  guard (c' `elem` [1..8] && r' `elem` [1..8])
  return (c',r')

inMany :: KnightPos -> Int -> [KnightPos]
inMany start x = return start >>= foldr (<=<) return (replicate x moveKnight)

canReachInMany :: KnightPos -> KnightPos -> Int -> Bool
canReachInMany start end n = end `elem` inMany start n

in3WithInst :: KnightPos -> [[KnightPos]]
in3WithInst start = do
  first <- moveKnight start
  second <- moveKnight first
  third <- moveKnight second
  return [third, second, first]

finalPos :: (a,b,c) -> (c)
finalPos (_,_,c) = c

canReachIn3WithInst :: KnightPos -> KnightPos -> [[KnightPos]]
canReachIn3WithInst start end = [moves | moves <- (in3WithInst start), end == head moves]

import Control.Monad

type KnightPos = (Int, Int)

moveKnight :: KnightPos -> [KnightPos]
moveKnight (c,r) = do
  (c',r') <- [(c+2,r-1),(c+2,r+1),(c-2,r-1),(c-2,r+1)
               ,(c+1,r-2),(c+1,r+2),(c-1,r-2),(c-1,r+2)
               ]
  guard (c' `elem` [1..8] && r' `elem` [1..8])
  return (c',r')

in3 :: KnightPos -> [KnightPos]
-- in3 start = do
--   first <- moveKnight start
--   second <- moveKnight first
--   moveKnight second
in3 start = return start >>= moveKnight >>= moveKnight >>= moveKnight

canReachIn3 :: KnightPos -> KnightPos -> Bool
canReachIn3 start end = end `elem` in3 start

in3WithInst :: KnightPos -> [(KnightPos, KnightPos, KnightPos)]
in3WithInst start = do
  first <- moveKnight start
  second <- moveKnight first
  third <- moveKnight second
  return (first, second, third)

finalPos :: (a,b,c) -> (c)
finalPos (_,_,c) = c

canReachIn3WithInst :: KnightPos -> KnightPos -> [(KnightPos, KnightPos, KnightPos)]
canReachIn3WithInst start end = [moves | moves <- (in3WithInst start), end == finalPos moves]

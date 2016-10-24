-- cat haiku.txt | ./readFile

import Data.Char

main = do
  contents <- getContents
  putStr $ map toUpper contents

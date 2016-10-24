import System.IO

-- main = do
--   handle <- openFile "girlfriend.txt" ReadMode
--   contents <- hGetContents handle
--   putStr contents
--   hClose handle

-- openFile :: FilePath -> IOMode -> IO Handle
-- FilePath is just a synonym for String
-- data IOMode = ReadMode | WriteMode | AppendMode | ReadWriteMode
-- handle is something that represents where the file is.
-- all the h-prefixes mean handle

-- main = do
--   withFile "girlfriend.txt" ReadMode (\handle -> do
--     contents <- hGetContents handle
--     putStr contents)

main = do
  contents <- readFile "girlfriend.txt"
  putStr contents

import System.Environment
import System.IO
import System.Directory
import qualified Data.ByteString.Lazy as B

main = do
  (filename1:filename2:_) <- getArgs
  fileExists <- doesFileExist filename1
  if fileExists
    then do Main.copyFile filename1 filename2
    else do putStrLn "The file doesn't exist!"

copyFile :: FilePath -> FilePath -> IO ()
copyFile source dest = do
  contents <- B.readFile source
  B.writeFile dest contents

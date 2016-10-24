main = do
  line <- getLine
  if null line
    then return ()
    else do
      putStrLn $ reverseWords line
      main

reverseWords :: String -> String
-- reverseWords st = unwords (map reverse (words st))
-- unwords :: [String] -> String
-- words :: String -> [String]
reverseWords = unwords . map reverse . words

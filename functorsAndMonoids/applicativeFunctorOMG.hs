main = do
       a <- (++) <$> getLine <*> getLine
       putStrLn $ "The two lines concatinated turn out to be: " ++ a

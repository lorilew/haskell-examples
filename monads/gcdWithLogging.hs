import Control.Monad.Writer

gcd' :: Int -> Int -> Writer [String]  Int
gcd' a b
  | b == 0 = do
      tell ["Finished with " ++ show a]
      return a
  | otherwise = do
      tell [show a ++ " mod " ++ show b ++ " = " ++ show (a `mod` b)]
      gcd' b (a `mod` b)

-- Eg. mapM_ putStrLn $ snd $ runWriter (gcd' 111111111 22221)
-- need RunWriter to get it in show form

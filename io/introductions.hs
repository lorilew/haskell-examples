import Data.Char

main = do
  putStrLn "Hello, what's your first name?"
  firstname <- getLine
  putStrLn "And, what's your surname?"
  lastname <- getLine
  let bigFirstName = map toUpper firstname
      bigLastName = map toUpper lastname
  putStrLn  $ "Hey " ++ bigFirstName ++ " " ++ bigLastName ++ ", how are you?"

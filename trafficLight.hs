data TrafficLight = Red | Yellow | Green

instance Eq TrafficLight where
  Red == Red = True
  Yellow == Yellow = True
  Green == Green = True
  _ == _ = False

instance Show TrafficLight where
  show Red = "Red light"
  show Yellow = "Yellow light"
  show Green = "Green light"

instance Enum TrafficLight where
  succ Red = Yellow
  succ Yellow = Green
  succ Green = Red
  pred Red = Green
  pred Yellow = Red
  pred Green = Yellow

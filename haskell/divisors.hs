import Data.List 

divisors' n = (1:) $ nub $ concat [ [x, div n x] | x <- [2..limit], rem n x == 0 ]
  where limit = (floor.sqrt.fromIntegral) n

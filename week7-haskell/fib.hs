module Main where
  inefficientFib :: Integer -> Integer
  inefficientFib 0 = 0
  inefficientFib 1 = 1
  inefficientFib x = fib (x - 1) + fib (x - 2)


  fibTuple :: (Integer, Integer, Integer) -> (Integer, Integer, Integer)
  fibTuple (x, y, 0) = (x, y, 0)
  fibTuple (x, y, index) = fibTuple(y, x + y, index - 1)

  fibResult :: (Integer, Integer, Integer) -> Integer
  fibResult (x, y, z) = x

  tupleFib :: Integer -> Integer
  tupleFib x = fibResult (fibTuple (0, 1, x))


  fibNextPair :: (Integer, Integer) -> (Integer, Integer)
  fibNextPair (x, y) = (y, x + y)

  fibNthPair :: Integer -> (Integer, Integer)
  fibNthPair 1 = (1, 1)
  fibNthPair n = fibNextPair (fibNthPair (n - 1))

  fib :: Integer -> Integer
  fib = fst . fibNthPair

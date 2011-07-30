module Main where
  allEvenExample :: [Integer] -> [Integer]
  allEvenExample [] = []
  allEvenExample (h:t) = if even h then h:allEven t else allEven t

  allEven :: [Integer] -> [Integer]
  allEven list = [x | x <- list, even x]

array := list(
  list(1, 2, 3),
  list(4, 5, 6),
  list(7, 8, 9)
)

sum2d := method(array,
  total := 0
  array foreach(i, innerArray,
    total = total + innerArray sum
  )
  total
)

sum2d(array) println

fib := method(number,
  preprevious := 0
  previous := 1
  current := 1
  for(i, 2, number,
    current = previous + preprevious
    preprevious = previous
    previous = current
  )
  current
)

fib(1) println
fib(2) println
fib(3) println
fib(4) println

fib(30) println

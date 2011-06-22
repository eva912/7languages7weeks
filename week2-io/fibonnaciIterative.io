fib := method(number,
  if(number < 2, return number)

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

fib(0) println
fib(1) println
fib(2) println
fib(3) println
fib(4) println

fib(30) println

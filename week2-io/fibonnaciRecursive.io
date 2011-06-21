fib := method(number,
  if(number < 2, number, fib(number - 1) + fib(number - 2))
)

fib(1) println
fib(2) println
fib(3) println
fib(4) println

fib(20) println

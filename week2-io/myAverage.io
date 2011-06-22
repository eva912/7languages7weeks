List myAverage := method(
  sum := 0
  size := 0
  self foreach(i, value,
    if(value type == "Number",
      sum = sum + value
      size = size + 1
    )
  )
  if(size == 0, return 0)
  sum / size
)

list(1, 2, 10) myAverage println

list("impossible", "to", "calculate") myAverage println

list(1, 2, "only", "average", "numbers", 3) myAverage println

List myAverage := method(
  self foreach(i, value, if(value type != "Number", return(0)))
  self sum / self size
)

list(1, 2, 10) myAverage println

list("impossible", "to", "calculate") myAverage println

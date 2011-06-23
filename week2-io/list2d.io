List2d := Object clone
List2d items := list()
List2d dim := method(x, y,
  for(i, 1, y,
    innerItems := list()
    for(j, 1, x, innerItems append(0))
    items append(innerItems)
  )
)
List2d set := method(x, y, value,
  innerList := items at(y - 1)
  innerList atPut(x - 1, value)
)
List2d get := method(x, y,
  items at(y - 1) at(x - 1)
)

myList := List2d clone
myList dim(3, 5)
myList set(1, 1, "Begin")
myList set(2, 3, "Middle")
myList set(3, 5, "End")
myList items println
myList get(1, 1) println
myList get(2, 3) println
myList get(3, 5) println

List2d := Object clone
List2d items := list()
List2d dim := method(x, y,
  for(i, 1, y,
    innerItems := list()
    for(j, 1, x, innerItems append(0))
    items append(innerItems)
  )
)

myList := List2d clone
myList dim(3, 5)
myList items println

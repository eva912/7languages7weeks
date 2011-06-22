# Demonstration of orginial division behaviour:
(10 / 2) println
(10 / 0) println

# What type is the number 10? -- It's a Number.
(10 type) println

# Save the orignial divide functionality for later:
Number originalDivide := Number getSlot("/")

# Demonstration that we can use this to get the same as before:
(10 originalDivide(2)) println
(10 originalDivide(0)) println

# Redefine the divide operator to return 0 if the divisor is 0:
Number / := method(divisor, if(divisor == 0, 0, self originalDivide(divisor)))

# Now use the new and improved divide behaviour:
(10 / 2) println
(10 / 0) println

Vehicle := Object clone
Vehicle description := "Something to take you far away"

Car := Vehicle clone
Car description println

Car setProto(Object)
Car description println

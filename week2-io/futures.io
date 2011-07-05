one := Object clone
two := Object clone

one future := method(wait(2); Date now)
two future := method(wait(2); Date now)

first := one @future
second := two @future

writeln(Date now)

writeln ("First finished at ", first)
writeln ("Second finished at ", second)

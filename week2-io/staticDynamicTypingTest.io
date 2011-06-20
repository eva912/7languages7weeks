Tester := Object clone
Tester successTest := method(1 + "2" asNumber)
Tester failTest := method(1 + "2")

Tester slotNames println

Tester successTest println
Tester failTest

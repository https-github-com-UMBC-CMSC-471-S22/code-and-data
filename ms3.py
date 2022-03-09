""" 3x3 magic square problem """

from constraint import *

p = Problem()

p.addVariables(range(9), range(1,10))

p.addConstraint(AllDifferentConstraint(), range(9))

p.addConstraint(ExactSumConstraint(15), [0,4,8])
p.addConstraint(ExactSumConstraint(15), [2,4,6])
for row in range(3):
    p.addConstraint(ExactSumConstraint(15),
                    [row*3+i for i in range(3)])
for col in range(3):
    p.addConstraint(ExactSumConstraint(15),
                    [col+3*i for i in range(3)])

sols = p.getSolutions()
print(sols)

for s in sols:
    print()
    for row in range(3):
        for col in range(3):
            print(s[row*3+col], end="")
        print()

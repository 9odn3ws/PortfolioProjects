#given an String S remove all non didgits and return the rounded down average of all numbers.

import re

S = '-11,1.5,a,3,2.0, 10, 15.345,bhg,AHJS&$'

pattern = r'([^0-9.-])'

S = re.sub(pattern, ',', S)

print(S)

S = S.split(',')

print(S)

while '' in S:
    for i in S:
        if i == '':
            S.remove('')

numbers = []
for i in S:
    numbers.append(float(i))

sum = 0
for number in numbers:
    sum += number

average = int(sum/len(numbers))

print(S)
print(numbers)
print(sum)
print(len(numbers))
print(average)

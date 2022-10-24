# 2D Map regular solution

map = 'XXXXP,XXXXX,XXXXX,XXXXX,PXXXX'

list_map = list(map.split(','))
print(list_map)

lmap = [list(x) for x in list_map]
print(lmap)

x = []
y = []

for i in range(len(lmap)):
    for j in range(len(lmap[i])):
        if lmap[i][j] == 'P':
            x.append(i)
            y.append(j)


steps = abs(x[1]-x[0])+abs(y[1]-y[0])

print(steps)

### Solved all test cases ###



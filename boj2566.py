max = 0
maxRow = 0
maxCol = 0

for i in range(0, 9):
    row = list(map(int, input().split()))
    for j in range(0, 9):
        if row[j] > max:
            max = row[j]
            maxRow = i
            maxCol = j

print(max)
print(f'{maxRow + 1} {maxCol + 1}')
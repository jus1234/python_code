N = int(input())
i, num = 0, 0
while N > num:
    i += 1
    num += i

if i % 2 == 0 :
    x = i - (num - N)
    y = (num - N) + 1
else:
    x = (num - N) + 1
    y = i - (num - N)

print(f'{x}/{y}')
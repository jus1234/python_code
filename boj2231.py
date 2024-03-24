N = int(input())
res = 0

for i in range(1, N):
    if i + sum(list(map(int,str(i)))) == N:
        res = i
        break

print(res)
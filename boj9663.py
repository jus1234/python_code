def backTrack(n):
    global res
    if n == N:
        res += 1
    else:
        for i in range(N):
            if row[i] == ld[n - i] == rd[n + i] == 0:
                row[i] = ld[n - i] = rd[n + i] = 1
                backTrack(n + 1)
                row[i] = ld[n - i] = rd[n + i] = 0




N = int(input())
res = 0

row = [0] * N
ld = [0] * (2 * N)
rd = [0] * (2 * N)
        
backTrack(0)

print(res)
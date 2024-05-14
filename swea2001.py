T = int(input())
for test_case in range(1, T + 1):
    N, M = map(int, input().split())
    lst = []
    for _ in range(N):
        lst.append(list(map(int, input().split())))
    mx = 0
    for i in range(0, N):
        if i + M > N:
            break
        for j in range(0, N):
            if j + M > N:
                break
            else: 
                now = 0
                for m in range(M):
                    for n in range(M):
                        now += lst[i + m][j + n]
                if now >= mx:
                    mx = now
        
    print(f'#{test_case} {mx}')
T = int(input())
for test_case in range(1, T + 1):
    N = int(input())
    lst = [[] * (N + 1) for _ in range(N + 1)]

    for i in range(N):
        lst[i] = list(input())

    d = [(1, 0), (-1, 0), (0, 1), (0, -1), (1, 1), (1, -1), (-1, 1), (-1, -1)]
    
    isFive = False
    for i in range(N):
        for j in range(N):
            if lst[i][j] == 'o':
                for dx, dy in d:
                    nx = i + dx
                    ny = j + dy
                    l = 1
                    while True:
                        l += 1
                        if nx < 0 or nx >= N or ny < 0 or ny >= N:
                            break
                        if lst[nx][ny] == '.':
                            break
                        if l == 5:
                            isFive  = True
                            break
                        nx += dx
                        ny += dy
                    if isFive:
                        break
            if isFive:
                break
        if isFive:
            break
                        

    ans = 'YES' if isFive else 'NO'
    print(f'#{test_case} {ans}')
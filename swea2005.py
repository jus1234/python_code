T = int(input())
for test_case in range(1, T + 1):
    N = int(input())
    lst = [[0] * N for _ in range(0, N)]
    lst[0][0] = 1
    for i in range(1, N):
        for j in range(0, N):
            if j == 0:
                lst[i][j] = 1
            else:
                lst[i][j] = lst[i - 1][j - 1] + lst[i - 1][j]
    print(f'#{test_case}')
    for i in range(N):
        ans = ''
        for a in lst[i]:
            if a > 0:
                ans += str(a) + ' '
        print(ans)

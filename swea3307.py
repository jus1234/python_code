T = int(input())
for test_case in range(1, T + 1):
    N = int(input())
    lst = list(map(int, input().split()))
    dp = [1] * N
    for i in range(1, N):
        for j in range(0, i):
            if lst[i] < lst[j]:
                dp[i] = max(dp[i], dp[j] + 1)

    print(f'#{test_case} {max(dp)}')

T = int(input())
for test_case in range(1, T + 1):
    N, M = input().split()
    dp = [[0] * (len(M) + 1) for _ in range(len(N) + 1)]
    for i in range(1, len(N) + 1):
        for j in range(1, len(M) + 1):
            if N[i - 1] == M[j - 1]:
                dp[i][j] = dp[i - 1][j - 1] + 1
            else:
                dp[i][j] = max(dp[i - 1][j], dp[i][j - 1])
    print(f'#{test_case} {dp[len(N)][len(M)]}')



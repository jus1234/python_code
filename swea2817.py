def dfs(n, sm):
    global res
    if K < sm:
        return
    if n == N:
        if sm == K:
            res += 1
        return
    
    dfs(n + 1, sm + nums[n])
    dfs(n + 1, sm)


T = int(input())
for test_case in range(1, T + 1):
    N, K = map(int, input().split())
    nums = list(map(int, input().split()))
    res = 0
    dfs(0, 0)

    print(f'#{test_case} {res}')

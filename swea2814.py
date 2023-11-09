def dfs(i, v):
    global now
    now = max(now, len(v))
    for j in graph[i]:
        if j not in v:
            dfs(j, v + [j])
                

T = int(input())
for test_case in range(1, T + 1):
    N, M = map(int, input().split())
    graph = [[] for _ in range(0, N + 1)]

    for i in range(M):
        x, y = map(int, input().split())
        graph[x].append(y)
        graph[y].append(x)

    mx = 0
    for i in range(1, N + 1):
        now = 0
        dfs(i, [i])
        mx = max(now, mx)
    print(f'#{test_case} {mx}')
    

    

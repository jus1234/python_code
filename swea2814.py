def dfs(fr):
    global graph, visited, now
    visited[fr]  = True
    now += 1
    for to in range(1, N + 1):
        if graph[fr][to] and not visited[to]:
            dfs(to)

T = int(input())
for test_case in range(1, T + 1):
    N, M = map(int, input().split())

    graph = [[False] * (N + 1) for _ in range(N + 1)]
    visited = [False] * (N + 1)

    for i in range(0, M):
        fr, to = map(int, input().split())
        graph[fr][to] = True
        graph[to][fr] = True

    mx = 0
    for i in range(1, N + 1):
        if not visited[i]:
            now = 0
            dfs(i)
            mx = max(now, mx)

    print(f'#{test_case} {mx}')

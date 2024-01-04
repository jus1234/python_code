def dfs(fr):
    global graph, visited, res
    visited[fr] = True
    res += 1
    for to in range(1, N + 1):
        if graph[fr][to] and not visited[to]:
            dfs(to)

N = int(input())
M = int(input())

visited = [False] * (N + 1)
graph = [[False] * (N + 1) for _ in range(N + 1)]
res = 0
for i in range(0, M):
    fr, to = map(int, input().split())
    graph[fr][to] = True
    graph[to][fr] = True


dfs(1)
print(res - 1)


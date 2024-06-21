import sys
sys.setrecursionlimit(10**6)
input = sys.stdin.readline


def dfs(fr):
    global graph, visited
    visited[fr]  = True
    for to in range(1, N + 1):
        if graph[fr][to] and not visited[to]:
            dfs(to)


N, M = map(int, input().split())

graph = [[False] * (N + 1) for _ in range(N + 1)]
visited = [False] * (N + 1)

for i in range(0, M):
    fr, to = map(int, input().split())
    graph[fr][to] = True
    graph[to][fr] = True

cnt = 0
for i in range(1, N + 1):
    if not visited[i]:
        cnt += 1
        dfs(i)

print(cnt)

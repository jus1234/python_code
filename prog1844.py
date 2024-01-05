def solution(maps):
    res = []
    n = len(maps)
    m = len(maps[0])
    direc = [[1, 0], [-1, 0], [0, 1], [0, -1]]
    def dfs(i, j, c, visited):
        newVisited = list(visited)
        newVisited.append([i, j])
        if i == n - 1 and j == m - 1:
            res.append(c)
            return
        for d in direc:
            if 0 <= i + d[0] < n and 0 <= j + d[1] < m :
                if maps[i + d[0]][j + d[1]] == 1:
                    if [i + d[0], j + d[1]] not in newVisited:
                        dfs(i + d[0], j + d[1], c + 1, newVisited)

    dfs(0, 0, 1, [])
    answer = sorted(res)[0] if len(res) > 0 else -1

    return answer

from collections import deque
def solution1(maps):
    n = len(maps)
    m = len(maps[0])
    direc = [[-1, 0], [0, -1], [1, 0], [0, 1]]
    def bfs(i, j):
        lst = []
        lst.append([i, j])
        queue = deque(lst)
        while queue:
            [a, b] = queue.popleft()
            for d in direc:
                if 0 <= a + d[0] < n and 0 <= b + d[1] < m :
                    if maps[a + d[0]][b + d[1]] == 1:
                        maps[a + d[0]][b + d[1]] = maps[a][b] + 1
                        queue.append([a + d[0], b + d[1]])
        return maps[n - 1][m - 1]
    res = bfs(0, 0)
    return res if res > 1 else -1

print(solution1([[1,0,1,1,1],[1,0,1,0,1],[1,0,1,1,1],[1,1,1,0,1],[0,0,0,0,1]]))
print(solution([[1,0,1,1,1],[1,0,1,0,1],[1,0,1,1,1],[1,1,1,0,0],[0,0,0,0,1]]))
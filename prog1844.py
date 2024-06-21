from collections import deque
def solution(maps):
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
def solution(n):
    last = n * (n + 1) // 2
    now = 1

    snail = [[0] * i for i in range(1, n + 1)]

    dx = [0, 1, -1]
    dy = [1, 0, -1]
    x = y = angle = 0

    while now <= last:
        snail[y][x] = now
        ny = y + dy[angle]
        nx = x + dx[angle]
        now += 1

        if 0 <= ny < n and 0 <= nx <= ny and snail[ny][nx] == 0:
            y, x = ny, nx
        else:
            angle = (angle + 1) % 3
            y += dy[angle]
            x += dx[angle]

    return [i for j in snail for i in j]

print(solution(4)) #[1,2,9,3,10,8,4,5,6,7]
print(solution(5)) #[1,2,12,3,13,11,4,14,15,10,5,6,7,8,9]
print(solution(6)) #[1,2,15,3,16,14,4,17,21,13,5,18,19,20,12,6,7,8,9,10,11]
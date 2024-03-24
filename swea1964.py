T = int(input())
for test_case in range(1, T + 1):
    N = int(input())
    lst = [[0] * N for _ in range(0, N)]
    d = [(0,1),(1,0),(0,-1),(-1,0)]
    x, y, dn = 0, 0, 0
    for i in range(1, N * N + 1):
        lst[x][y] = i
        ndx = d[dn][0]
        ndy = d[dn][1]
        if (x + ndx > N - 1) or (x + ndx < 0) or (y + ndy > N - 1) or (y + ndy < 0):
            dn += 1
            dn %= 4
        else:
            if lst[x + ndx][y + ndy] != 0:
                dn += 1
                dn %= 4
        x += d[dn][0]
        y += d[dn][1]

    print(f'#{test_case}')
    for i in range(0, len(lst)):
        print(*lst[i])


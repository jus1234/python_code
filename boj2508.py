T = int(input())
for tc in range(1, T + 1):
    _ = input()
    r, c = map(int, input().split())
    arr = []
    res = 0
    for i in range(r):
        arr.append(list(input()))

    for i in range(r):
        for j in range(c):
            if j + 2 < c and arr[i][j] == '>' and arr[i][j + 1] == 'o' and arr[i][j + 2] == '<':
                res += 1
            if i + 2 < r and arr[i][j] == 'v' and arr[i + 1][j] == 'o' and arr[i + 2][j] == '^':
                res += 1

    print(res)
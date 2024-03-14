N = int(input())
res = -1

if N == 4 or N == 7:
    print(res)
else:
    res = N // 5
    nowN = N % 5

    while N != 0:
        res += nowN // 3
        if nowN  % 3 == 0:
            N = 0
        else:
            res -= nowN // 3 + 1
            nowN += 5

    print(res)

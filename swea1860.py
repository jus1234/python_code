T = int(input())
for test_case in range(1, T + 1):
    N, M, K = map(int, input().split())
    lst = list(map(int, input().split()))
    lst.sort()
    cnt = 0
    res = True
    mt = 0
    for i in range(0, len(lst)):
        a = lst[i]
        t = a - (mt * M)
        if t < M and cnt <= 0:
            res = False
            break
        if t >= M:
            cnt += K * (t // M)
            mt += t // M

        cnt -= 1
    
    print(f'#{test_case} {"Possible" if res else "Impossible"}')




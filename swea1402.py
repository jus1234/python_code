T = int(input())
for test_case in range(1, T + 1):
    _ = int(input())
    lst = list(map(int, input().split()))
    dic = {}
    mx = 0
    sc = 0
    for n in lst:
        if dic.get(n):
            dic[n] += 1
        else:
            dic[n] = 1
    
    for n, c in dic.items():
        if c > mx:
            mx = c
            sc = n
    
    print(f'#{test_case} {sc}')
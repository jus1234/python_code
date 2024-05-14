T = int(input())
for test_case in range(1, T + 1):
    N = int(input())
    lst = list(map(int, input().split()))[::-1]
    p = 0
    mx = lst[0]
    for i in range(1, len(lst)):
        if mx > lst[i]:
            p += mx - lst[i]
        else:
            mx = lst[i]
    print(f'#{test_case} {p}')

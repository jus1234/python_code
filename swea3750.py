T = int(input())
ans = []
for test_case in range(1, T + 1):
    N = int(input())

    n = len(str(N))
    s = N

    while n > 1:
        lst = list(map(int, str(s)))
        s = sum(lst)
        n = len(str(s))
    
    ans.append(f'#{test_case} {s} \n')
    
print(''.join(ans))
T = int(input())
for test_case in range(1, T + 1):
    L, U, X = map(int, input().split())
    ans = 0
    if X < L:
        ans = L - X
    elif X > U:
        ans = -1

    print(f'#{test_case} {ans}')

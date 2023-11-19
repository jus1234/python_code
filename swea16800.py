T = int(input())
for test_case in range(1, T + 1):
    N = int(input())
    x = 0
    y = 0
    for i in range(int(N**(1/2) + 1), 0 , -1):
        if N % i == 0:
            x = i
            y = N // i
            break

    print(f'#{test_case} {x - 1 + y - 1}')


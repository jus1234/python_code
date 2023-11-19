T = int(input())
for test_case in range(1, T + 1):
    N = int(input())
    for i in range(int(N**(1/2) + 1), 0 , -1):
        if N % i == 0:
            print(f'#{test_case} {i - 1 + (N // i) - 1}')
            break    


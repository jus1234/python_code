T = int(input())
for test_case in range(1, T + 1):
    N = int(input())
    arr = []
    for i in range(0, N):
        arr.append(list(map(int, input())))
    res = 0
    start = N // 2
    center = N // 2 + 1
    length = 1
    for i in range(1, N + 1):
        last = start + length
        if i <= center - 1:
            res += sum(arr[i - 1][start:last])
            start -= 1
            length += 2
        else:
            res += sum(arr[i - 1][start:last])
            start += 1
            length -= 2
    print(f'#{test_case} {res}')
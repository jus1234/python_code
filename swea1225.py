from collections import deque

for test_case in range(1, 11):
    _ = input()
    deq = deque(list(map(int, input().split())), 8)

    i = 1
    while True:
        if i > 5:
            i = 1
        n = deq.popleft() - i
        if n < 0:
            n = 0
        deq.append(n)
        if n == 0:
            break
        i += 1

    res = ''
    for n in list(deq):
        res += str(n) + ' '
    print(f'#{test_case} {res}')













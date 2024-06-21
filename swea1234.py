from collections import deque

for test_case in range(1, 11):
    N, txt = input().split()
    N = int(N)
    originList = list(txt)
    deq = deque([], N)

    for n in originList:
        if len(deq) != 0:
            m = deq.pop()
            if n != m:
                deq.append(m)
            deq.append(n)
    res = ''
    length = len(deq)
    for _ in range(length):
        res += deq.popleft()

    print(f'#{test_case} {res}')


from collections import deque

N = int(input())
deq = deque([])

for i in range(1, N + 1):
    deq.append(str(i))

res = ''
while deq:
    res += deq.popleft() + ' '
    if deq:
        deq.append(deq.popleft())

print(res)
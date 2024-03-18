from collections import deque
N = int(input())
deq = deque([])
for i in range(1, N + 1):
    deq.append(i)
last = 0
while len(deq) > 0:
    last = deq.popleft()
    if len(deq) > 0:
        deq.append(deq.popleft())
print(last)
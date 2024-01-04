from collections import deque

deq = deque([], 100)

deq.appendleft(10)
deq.append(100)

print(list(deq))


from collections import deque

N, K = map(int, input().split())
lst = [x for x in range(1, N + 1)]
deq = deque(lst)
res = '<'
k = 0
while len(deq) > 0:
    k += 1
    a = deq.popleft()
    if k != K:
        deq.append(a)
    else:
        res += str(a) + ', '
        k = 0
res = res[:-2]
res += '>'
print(res)
import sys, heapq

input = sys.stdin.readline
hq = []

N = int(input())
for _ in range(N):
    n = int(input())
    if n != 0 :
        heapq.heappush(hq, (abs(n), n))
    else:
        print(heapq.heappop(hq)[0] if len(hq) else 0)
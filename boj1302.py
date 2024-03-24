import sys
import collections

input = sys.stdin.readline
N = int(input())
books = list(input().rstrip() for _ in range(N))

counter = collections.Counter(books)

maximum = max(counter.values())
ans = []
for key, value in counter.items():
    if value >= maximum:
        maximum = value
        ans.append(key)

ans.sort()
print(ans[0])
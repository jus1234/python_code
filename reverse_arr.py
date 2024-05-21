lst = list(map(int, input().split()))

n = len(lst)

for i in range(n // 2):
    lst[i], lst[n - i - 1] = lst[n - i - 1], lst[i]

print(lst)
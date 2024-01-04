N = int(input())
lst = []
for _ in range(N):
    lst.append(input())
lst = set(lst)
lst = sorted(list(lst), key=lambda x:(len(x), x))

for l in lst:
    print(l)

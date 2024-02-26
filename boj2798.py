N, M = map(int, input().split(' '))
lst = list(map(int, input().split(' ')))
max = 0

for i in range(0, N):
    for j in range(i + 1, N):
        for k in range(j + 1, N):
            sum = lst[i] + lst[j] + lst[k]
            if sum == 500:
                print(f'{lst[i]} {lst[j]} {lst[k]}')
            if sum > max and sum <= M:
                max = sum

print(max)
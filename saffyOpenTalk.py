N, K = map(int, input().split())

nowK = 1
i = 2
j = 1

while K != nowK:
    if(i == j + 1):
        i += 1
        j = 1
    else:
        j += 1
    nowK += 1

print(bin(N - j + 1)[2:])



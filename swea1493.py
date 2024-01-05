i, j = 1, 1
dic = {}
rDic = {}
for n in range(1, 50000):
    dic[n] = (i, j)
    rDic[(i, j)] = n
    i, j = i - 1, j + 1
    if i < 1:
        i,j = j, 1

T = int(input())
for test_case in range(1, T + 1):
    p, q = map(int, input().split())

    x, y = dic[p]
    z, w = dic[q]
    
    print(f'#{test_case} {rDic[(x+z, y+w)]}')
    
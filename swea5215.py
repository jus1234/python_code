# T = int(input())
# for test_case in range(1, T + 1):
#     N, L = map(int, input().split())
#     lst = []
#     for i in range(N):
#         tk = list(map(int, input().split()))
#         tk.append(tk[0] / tk[1])
#         lst.append(tk)
    
#     lst.sort(key = lambda x:(-x[2], -x[0]))
#     nowK = 0
#     nowM = 0
#     for tk in lst:
#         if nowK + tk[1] <= L:
#             nowM += tk[0]
#             nowK += tk[1]

#     print(f'#{test_case} {nowM}')

def dfs(i, m, k):
    global mx
    if i == N:
        mx = max(mx, m)
        return
    nowM, nowK = lst[i][0], lst[i][1]
    if k + nowK <= L:
        dfs(i + 1, m + nowM, k + nowK)
    dfs(i + 1, m, k)



T = int(input())
for test_case in range(1, T + 1):
    N, L = map(int, input().split())
    lst = []
    for i in range(N):
        lst.append(list(map(int, input().split())))
    mx = 0
    dfs(0, 0, 0)

    print(f'#{test_case} {mx}')

    

    

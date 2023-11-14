T = int(input())
# for test_case in range(1, T + 1):
#     N, M = map(int, input().split())
#     lst = [[0] * N for _ in range(N)]
#     a = N//2
#     lst[a - 1][a - 1] = 2
#     lst[a][a] = 2
#     lst[a - 1][a] = 1
#     lst[a][a - 1] = 1
#     d = [(1,0), (-1,0),(0,1),(0,-1),(1,1),(-1,-1),(1,-1),(-1,1)]
#     dic = {1:2, 2:1}
#     for i in range(0, M):
#         y, x, c = map(int, input().split())
#         lst[x - 1][y - 1] = c

#         for dx, dy in d:
#             nx = x - 1
#             ny = y - 1
#             for j in range(N):
#                 if nx + dx < 0 or nx + dx > N -1 or ny + dy < 0 or ny + dy > N - 1:
#                     break
#                 nx += dx
#                 ny += dy
#                 if lst[nx][ny] == c:
#                     break
#                 if (nx, ny) in [(0,0), (0, N - 1), (N - 1, 0), (N -1, N - 1)]:
#                     break
#                 if lst[nx][ny] == dic[c]:
#                     lst[nx][ny] = c
                
#         print(lst)

#     b, w = 0, 0
#     for l in lst:
#         b += l.count(1)
#         w += l.count(2)

#     print(f'#{test_case} {b} {w}')
for test_case in range(1, T + 1):
   n,m = map(int,input().split())
   arr = [[0]*(n+1) for _ in range(n+1)] # 오셀로 게임판
 
   mid = n//2
   arr[mid][mid]= arr[mid+1][mid+1] = 2
   arr[mid][mid+1] = arr[mid+1][mid]=1  # 흑, 백돌 초기 위치
 
   for _ in range(m):
       start_i,start_j,d = map(int,input().split())
       arr[start_i][start_j] = d
       # 돌을 놓을 수 있는 8가지 방향
       for di,dj in ((-1,-1),(-1,0),(-1,1),(1,-1),(1,0),(1,1),(0,-1),(0,1)):
           r = [] # 후보 값
           for mul in range(1,n):
               next_i,next_j = start_i+di*mul,start_j+dj*mul
               if 1<=next_i<=n and 1<=next_j<=n: # 범위 내
                   if arr[next_i][next_j]==0:
                       break
                   elif arr[next_i][next_j] ==d: # 변경
                       while r:
                            temp_i,temp_j = r.pop()
                            arr[temp_i][temp_j]=d
                       break
                   else:
                       r.append((next_i,next_j))
               else:
                    break
   black, white = 0,0
   for lst in arr:
       black+=lst.count(1)
       white+=lst.count(2)
   print('#'+str(test_case),black,white)
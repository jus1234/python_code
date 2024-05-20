N, M = map(int, input().split())

arr1 = [[]] * N
arr2 = [[]] * N
answer = [[0] * M] * N

for i in range(0, N) :
    arr1[i] = list(map(int, input().split()))
    

for i in range(0, N) :
    arr2[i] = list(map(int, input().split()))
    
for i in range(0, N) :
    lst = [x+y for x,y in zip(arr1[i] , arr2[i])]
    print(*lst)
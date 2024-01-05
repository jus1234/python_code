arr = [[]] * 5
    
for i in range(0, 5):
    lst = list(input())
    arr[i] = lst

answer = ''

for j in range(0, 15):
    for i in range(0, 5):
        size = len(arr[i])
        if size >= j + 1:
            answer += arr[i][j]
    
print(answer)
from collections import deque
x=int(input())
arr = deque([64])
count = 0
while(1):
    if sum(arr)==x:
        break
    if x  <= sum(arr)-arr[0]/2:
        arr[0] = arr[0]/2
    else:
        tmp = arr[0]/2
        arr[0] = tmp
        arr.appendleft(tmp)
    
print(len(arr))


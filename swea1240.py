dic = {'0001101':0, '0011001':1, '0010011':2, '0111101':3, '0100011':4, '0110001':5,
       '0101111':6,'0111011':7, '0110111': 8, '0001011':9}

T = int(input())
for test_case in range(1, T + 1):
    N, M  = map(int, input().split())
    
    password = ''

    for _ in range(0, N):
        txt = input()
        flag = False
        for n in txt:
            if n == '1' and flag == False:
                password = txt
                flag = True

    first = 0
    last = 0
    for i in range(0, len(password)):
        if password[i] == '1':
            last = i
            if first == 0:
                first = i

    binaryNums = password[first:last + 1]
    binaryNums = '0' * (56 - len(binaryNums)) + binaryNums
    
    lst = []
    t = ''
    for a in binaryNums:
        t += a
        if len(t) == 7:
            lst.append(dic[t])
            t = ''

    odd = 0
    even = 0
    sum = 0
    for i in range(1, len(lst) + 1):
        sum += lst[i - 1]
        if i % 2 == 0:
            even += lst[i - 1]
        else:
            odd += lst[i - 1]
    
    res = sum if (odd * 3 + even) % 10 == 0 else 0 
    

    print(f'#{test_case} {res}')
    


        
        


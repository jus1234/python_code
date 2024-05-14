T = int(input())
for test_case in range(1, T + 1):
    lst = []
    for i in range(0, 9):
        lst.append(list(map(int, input().split())))
    ans = 1
    for i in range(0, 9):
        rSet = set()
        cSet = set()
        for j in range(0, 9):
            rSet.add(lst[i][j])
            cSet.add(lst[j][i])
            if i % 3 == 0 and j % 3 == 0:
                sSet = set()
                for k in range(0, 3):
                    for l in range(0, 3):
                        sSet.add(lst[i + k][j + l])
                if len(list(sSet)) != 9:
                    ans = 0
        if len(list(rSet)) != 9 or len(list(cSet)) != 9:
            ans = 0
    print(f'#{test_case} {str(ans)}')
    

        



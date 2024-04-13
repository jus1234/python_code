
for test_case in range(1, 11):
    N = int(input())
    origin = list(map(int, input().split()))
    cmdCnt = int(input())
    cmdLst = [list(map(int, nList.split())) for nList in input()[2:].split(' I ')]
    
    for cmd in cmdLst:
        i = cmd[0]
        length = cmd[1]
        extd = cmd[2:]
        front = origin[:i]
        back = origin[i:]
        front.extend(extd)
        front.extend(back)
        origin = front

    res = ''
    for i in range(0, 10):
        res += str(origin[i]) + ' '

    print(f'#{test_case} {res}')










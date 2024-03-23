for test_case in range(1, 11):
    N = int(input())
    origin = list(map(int, input().split()))
    cmdCnt = int(input())
    cmdInput = list(input().split())

    cmdList = []
    vCmd = []
    for i in range(0, len(cmdInput)):
        try: 
            vCmd.append(int(cmdInput[i]))
            if i == len(cmdInput) - 1:
                cmdList.append(vCmd)
        except:
            if i == 0:
                vCmd.append(cmdInput[i])
            else: 
                cmdList.append(vCmd)
                vCmd = []
                vCmd.append(cmdInput[i])

    for cmd in cmdList:
        idx = cmd[1]
        front = origin[:idx]
        back = []
        if cmd[0] == 'I':
            back = origin[idx:]
            extd = cmd[3:]
            front.extend(extd)
        else:
            num = cmd[2]
            back = origin[(idx + num):]
        front.extend(back)
        origin = front

    res = ''
    for i in range(0, 10):
        res += str(origin[i]) + ' '

    print(f'#{test_case} {res}')

    







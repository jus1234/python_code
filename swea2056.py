T = int(input())
notThirty = ['01','03','05','07','08','10','12']
thirty = ['04','06','09','11']

for test_case in range(1, T + 1):
    yyyymmdd = input()
    yyyy = yyyymmdd[:4]
    mm = yyyymmdd[4:6]
    dd = yyyymmdd[6:]
    test = True
    if mm in notThirty:
        if int(dd) <= 0 or int(dd) > 31:
            test = False
    elif mm in thirty:
        if int(dd) <= 0 or int(dd) > 30:
            test = False
    elif mm == '02':
        if int(dd) <= 0 or int(dd) > 28:
            test = False
    else:
        test = False

    if not test:
        print(f'#{test_case} -1')
        continue
    ans = yyyy + '/' + mm + '/' + dd
    print(f'#{test_case} {ans}')
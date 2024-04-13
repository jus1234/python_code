txt = input()
res = ''
cnt = 0
i = 0
for a in txt:
    if a == 'X' :
        cnt += 1
    else:
        res += 'AAAA' * (cnt // 4)
        cnt %= 4
        res += 'BB' * (cnt // 2)
        cnt %= 2
        res += '.'
        if cnt != 0:
            res = '-1'
            break
        cnt = 0
    if i == len(txt) - 1:
        res += 'AAAA' * (cnt // 4)
        cnt %= 4
        res += 'BB' * (cnt // 2)
        cnt %= 2
        if cnt != 0:
            res = '-1'
    i += 1
print(res) 
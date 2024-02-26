N = int(input())
ans = ''
for i in range(1, N + 1):
    ii = str(i)
    if ii.count('3'):
        for j in range(0, ii.count('3')):
            ans += '-'
        for j in range(0, ii.count('6')):
            ans += '-'
        for j in range(0, ii.count('9')):
            ans += '-'
        ans += ' '
    elif ii.count('6'):
        for j in range(0, ii.count('3')):
            ans += '-'
        for j in range(0, ii.count('6')):
            ans += '-'
        for j in range(0, ii.count('9')):
            ans += '-'
        ans += ' '
    elif ii.count('9'):
        for j in range(0, ii.count('9')):
            ans += '-'
        for j in range(0, ii.count('6')):
            ans += '-'
        for j in range(0, ii.count('3')):
            ans += '-'
        ans += ' '
    else:
        ans += ii + ' '
print(ans)
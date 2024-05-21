hh, mm = map(int, input().split())
minutes = int(input())
hours = 0

compeleteMm = mm + minutes
completeHh = hh

if compeleteMm >= 60 :
    hours = compeleteMm // 60
    compeleteMm %= 60

completeHh += hours
if completeHh >= 24 :
    completeHh %= 24

print(completeHh, compeleteMm)
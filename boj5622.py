word = input()

phoneDial = ['_','ABC','DEF','GHI','JKL','MNO','PQRS','TUV','WXYZ']

time = 0

for alph in word :
    idx = 0
    for i in phoneDial :
        idx += 1
        if alph in i :
            time += idx + 1

print(time)
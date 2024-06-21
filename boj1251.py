txt = input()
l = len(txt)
lst = []
for i in range(1, l - 2):
    for j in range(i + 1, l):
        top = txt[:i]
        mid = txt[i:j]
        bot = txt[j:]
        lst.append(top[::-1] + mid[::-1]  + bot[::-1])
print(sorted(lst)[0])
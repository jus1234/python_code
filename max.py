def max(a, b, c):
    maximum = a
    if maximum < b : maximum = b
    if maximum < c : maximum = c
    return maximum

print(f'max(1,2,3) = {max(1,2,3)}')
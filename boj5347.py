T = int(input())
def gcd(n, m):
    r = n % m
    if r == 0:
        return m
    return gcd(m, r)
for _ in range(T):
    a, b = map(int, input().split())
    if b > a:
        a, b = b, a
    g = gcd(a, b)
    print(a * b // g)
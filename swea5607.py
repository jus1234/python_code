result = []

T = int(input())

def fp(N, p):
    global C
    if p == 0:
        return 1

    half = fp(N, p // 2)

    if p % 2 == 0:
        return (half % C) ** 2 % C
    else:
        return (((half * N) % C) * (half % C)) % C


C = 1234567891

fac = [1] * 1000001

for i in range(1, 1000001):
    fac[i] = (fac[i - 1] * i) % C

for case in range(1, T + 1):
    N, R = map(int, input().split())

    # [ (N! % C) / { ((N-R)! % C) * (R! % C) } ] % C
    # => [ (N! %C) * { ((N-R)! % C) * (R! % C) }** (C-2) ] % C

    top = fac[N] % C
    bottom = (fac[N - R] % C) * (fac[R] % C)
    bottom_reversed = fp(bottom, C - 2)

    ans = top * bottom_reversed % C

    result.append(f"#{case} {ans}")

for _ in result:
    print(_)
import heapq

T = int(input())
for test_case in range(1, T + 1):
    N = int(input())
    heap = []
    res = ''
    for i in range(0, N):
        a = input()
        if len(a) > 1:
            b, n = map(int, a.split())
            heapq.heappush(heap, (-n, n))
        else:
            if len(heap) > 0:
                res += str(heapq.heappop(heap)[1]) + ' '
            else :
                res +=  '-1 '

    print(f'#{test_case} {res}')






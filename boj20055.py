import sys
from collections import deque

input = sys.stdin.readline
N, K = map(int, input().split())
A = deque(map(int, input().split()))
robots = deque([0 for _ in range(N)])
result = 0

while True:
    # 회전!
    A.rotate(1)
    robots.rotate(1)

    # 로봇 내리는 위치
    robots[N-1] = 0

    # 이동 여부 확인!
    for i in range(N-2, -1, -1):
        # 이동할 수 있다면?
        if (robots[i] and not robots[i+1] and A[i+1] >= 1):
            # 다음칸으로 이동하면서 내구도 -1
            A[i+1] -= 1
            robots[i+1] = robots[i]
            robots[i] = robots[0]

    # 로봇 내리는 위치
    robots[N-1] = 0

    # 로봇 올리는 위치
    if A[0] >= 1:
        A[0] -= 1
        robots[0] = 1
    result += 1

    # 내구도 0인 칸 개수 체킹
    if A.count(0) >= K:
        break

print(result)
출처: https://tooo1.tistory.com/578 [개발자 퉁이리:티스토리]
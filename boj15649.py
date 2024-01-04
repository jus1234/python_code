import sys
input = sys.stdin.readline

def backTraking() :
    if len(array) == M:
        print(" ".join(map(str, array)))

    for i in range(1, N + 1):
        if i not in array:
            array.append(i)
            backTraking()
            array.pop()


N, M = map(int, input().split())
array = []

backTraking()
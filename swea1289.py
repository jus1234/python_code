T = int(input())
for test_case in range(1, T + 1):
    lst = list(map(int, input()))
    if 1 not in lst:
        print(f"#{test_case} 0")
        continue
    cnt = 1
    start = lst.index(1)
    for i in range(start, len(lst) - 1):
        if lst[i] != lst[i + 1]:
            cnt += 1

    print(f"#{test_case} {cnt}")

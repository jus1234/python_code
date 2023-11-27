def hanoi(n: int, x: int, y: int):
    if n > 1:
        hanoi(n - 1, x, 6 - x - y)
    
    print(f'원반 {n}을(를) {x}기둥에서 {y}기둥으로 옮깁니다.')

    if n > 1:
        hanoi(n - 1, 6 - x - y, y)

hanoi(3, 1, 3)

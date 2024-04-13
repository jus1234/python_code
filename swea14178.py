T = int(input())
 
for tc in range(T):
    N, D = map(int, input().split())
    count = 1
 
    fir = 1+D*2 # 분무기 한개의 길이
    one_l = fir
    while one_l<N:
        if one_l == N:
            break
        else:
            count += 1
        one_l += fir
 
    print(f'#{tc+1} {count}')
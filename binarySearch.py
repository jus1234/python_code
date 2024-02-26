from typing import Sequence, Any

def bin_search(a: Sequence, key: Any) -> int:
    pl = 0 # 검색 범위 맨 앞 원소의 인덱스
    pr = len(a) # 검색 범위 맨 뒤의 인덱스

    while True:
        pc = (pl + pr) / 2 # 검색 범위 중앙 원소의 인덱스
        if a[pc] == key:
            return pc
        elif a[pc] < key:
            pl = pc + 1 # 검색 범위를 뒤쪽 절반으로 축소
        else:
            pr = pc - 1 # 검색 범위를 앞쪽 절반으로 축소
        if pl > pc:
            break

    return -1
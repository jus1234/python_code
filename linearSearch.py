from typing import Any, Sequence
import copy

def seq_search(a: Sequence, key: Any) -> int:
    for i in range(len(a)):
        if a[i] == key:
            return i
    return -1

def seq_search_sentinel(seq: Sequence, key: Any) -> int:
    a = copy.deepcopy(seq) # seq 복사
    a.append(key) # 보초 key 추가

    i = 0
    while True:
        if a[i] == key:
            break
        i += 1
    
    return -1 if i == len(seq) else i
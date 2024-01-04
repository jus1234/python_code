from stack import Stack
from typing import MutableSequence

def qSort(a: MutableSequence, left: int, right: int) -> None:
    range = Stack(right - left + 1)

    range.push((left, right))

    while not range.is_empty():
        pl, pr = left, right  = range.pop()
        x = a[(left + right) // 2]

        while pl <= pr:
            while a[pl] < x: pl += 1
            while a[pr] > x: pr -= 1
            if pl <= pr:
                a[pl], a[pr] = a[pr], a[pl]
                pl += 1
                pr -= 1

        if left < pr: range.push((left, right))
        if pl < right: range.push((pl, right))


def quickSort(a: MutableSequence) -> None:
    qSort(a, 0, len(a) - 1)
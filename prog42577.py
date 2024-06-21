from functools import reduce

def solution(phone_book):
    phoneSet = set(phone_book)
    for phone in phone_book:
        for i in range(0, len(phone)):
            now = phone[0:i]
            if now in phoneSet and len(now) != phone:
                return False
    return True
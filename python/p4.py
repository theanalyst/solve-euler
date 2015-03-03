from itertools import product


def solution():
    return max((x*y for x, y in product(range(101, 999), range(101, 999))
                if str(x*y) == str(x*y)[::-1]))

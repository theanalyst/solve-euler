from itertools import takewhile
from .utils import fibs, is_even


def solution():
    return sum(filter(is_even, takewhile(lambda x: x < 4000000, fibs())))

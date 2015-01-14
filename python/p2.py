from itertools import takewhile, ifilter
from utils import fibs, is_even


def solution():
    return sum(ifilter(is_even, takewhile(lambda x: x < 4000000, fibs())))

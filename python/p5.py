from utils import lcm


def solution():
    return reduce(lcm, range(1, 20))

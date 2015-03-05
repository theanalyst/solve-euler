from math import sqrt
from _compat import xrange


def fibs():
    a = 0
    b = 1
    while True:
        yield a
        a, b = b, a + b


def is_even(x):
    return x % 2 == 0


def prime_factors(n):
    factors = []
    for i in xrange(2, int(sqrt(n))):
        if n % i == 0:
            n = n/i
            factors.append(i)

    return factors

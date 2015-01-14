
def fibs():
    a = 0
    b = 1
    while True:
        yield a
        a, b = b, a + b


def is_even(x):
    return x % 2 == 0

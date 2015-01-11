from python import *


def get_lines(filename):
    with open(filename) as f:
        yield f.readline().split()


def get_solutions(filename):
    return {k: v for k, v in get_lines(filename)}


def test_solutions():
    answers = get_solutions("solutions.txt")
    for k, v in answers.items():
        assert str(globals()[k].solution()) == v

if __name__ == "__main__":
    check_solutions()

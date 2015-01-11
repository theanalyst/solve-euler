import hy
from Hy import *

def get_lines(filename):
    with open(filename) as f:
        yield f.readline().split()


def get_solutions(filename):
    return {k: v for k, v in get_lines(filename)}

def test_hy_solutions():
    ''' answers is a dictionary containing key value of format
    p1 : <answer to problem 1>'''
    answers = get_solutions("solutions.txt")
    for k, v in answers.items():
        if k in globals():  # Check if solution is implemented
            assert str(globals()[k].solution()) == v

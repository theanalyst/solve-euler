from python import *


def process_solution(filename):
    with open(filename, 'r') as f:
        solutions = {k: v for k, v in (line.split() for line in f)}
    return solutions


def test_python_solutions():
    ''' answers is a dictionary containing key value of format
    p1 : <answer to problem 1>'''
    answers = process_solution("solutions.txt")
    for k, v in answers.items():
        if k in globals():  # Check if solution is implemented
            assert str(globals()[k].solution()) == v

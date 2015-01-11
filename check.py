def get_lines(filename):
    with open(filename) as f:
        yield f.readline().split()


def get_solutions(filename):
    return {k: v for k, v in get_lines(filename)}


def test_python_solutions():
    ''' answers is a dictionary containing key value of format
    p1 : <answer to problem 1>'''
    answers = get_solutions("solutions.txt")
    from python import *
    for k, v in answers.items():
        if k in globals():  # Check if solution is implemented
            assert str(globals()[k].solution()) == v


def test_hy_solutions():
    ''' answers is a dictionary containing key value of format
    p1 : <answer to problem 1>'''
    answers = get_solutions("solutions.txt")
    import hy
    from Hy import *
    for k, v in answers.items():
        if k in globals():  # Check if solution is implemented
            assert str(globals()[k].solution()) == v

if __name__ == "__main__":
    test_python_solutions()
    test_hy_solutions()

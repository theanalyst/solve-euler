Solve Euler
===============

[![Build Status](https://travis-ci.org/theanalyst/solve-euler.svg)]
(https://travis-ci.org/theanalyst/solve-euler.svg?branch=master)

An attempt to solve project euler in various languages, learning them
in the process. (Starting with python)

Current Setup
-------------

Solutions are tested via travis. For python & Hy ``py.test`` 
module is used to test the solutions. The scripts ``check.py`` 
as well as ``check_hy.py`` verify that implemented solutions 
in python & Hy. All solution files are expected 
to follow p<problem-number> format and implement a method solution 
which should return the number. This is checked against the known values 
in ``solutions.txt``

Feel free to submit improvements in solutions.

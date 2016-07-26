Solve Euler
===============

[![Build Status](https://travis-ci.org/theanalyst/solve-euler.svg?branch=master)]
(https://travis-ci.org/theanalyst/solve-euler)

An attempt to solve project euler in various languages, learning them
in the process. (Starting with python)

Test Setup
----------

Solutions are also tested in travis with expected values in
`solutions.txt`. Though Travis doesn't support multilanguage builds,
and since python is installed in Travis environments by default, a haskell
environment with some pip packages are used to test a multi
c++-Go-python-hy-haskell environment. Checkout `travis.yml` for the gory
details on how this is done.

Tests in python and Hy currently call the `solution` method for each
problem and compare against the values, the Haskell tests are a hack
atm currently printing all the values from `Euler` binary and
comparing them (externally) againstthe expected solutions.txt

@all:
	@echo "No Default step"

py:
	py.test check.py

hy:
	py.test check_hy.py

hs:
	cd haskell && cabal clean &&  cabal configure && cabal build

test: py hy hs

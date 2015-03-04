@all:
	@echo "No Default step"

py:
	py.test check.py

hy:
	py.test check_hy.py

hs:
	cd haskell && cabal clean &&  cabal configure && cabal build
	./test_haskell.sh

go:
	GOPATH=$(CURDIR)/Go go test euler

test: py hy hs go

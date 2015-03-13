@all:
	@echo "No Default step"

py:
	py.test check.py

hy:
	py.test check_hy.py

hs:
	cd haskell && cabal clean &&  cabal configure --enable-tests && cabal test


go:
	GOPATH=$(CURDIR)/Go go test euler

test: py hy hs go

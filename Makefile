@all:
	@echo "No Default step"

py:
	py.test check.py

hy:
	py.test check_hy.py

hs:
	cp -a $(CURDIR)/etc /tmp/
	cd haskell && cabal test
go:
	GOPATH=$(CURDIR)/Go go test euler

CCFLAGS = -Wall
SRC = $(wildcard cpp/*.cc)
CXX = g++
cpptest: $(SRC)
	$(CXX) -o $@ $^ $(CCFLAGS)

test: py hy hs go cpptest

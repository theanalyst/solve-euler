@all:
	@echo "No Default step"

py:
	py.test check.py

hy:
	py.test check_hy.py

test: py hy

.PHONY: all
all:

.PHONY: check
check:
	git grep "<<" src | grep -v "'COMMENT'" | grep -v "<<<"

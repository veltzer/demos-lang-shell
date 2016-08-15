.PHONY: all
all:

.PHONY: check
check:
	-git grep "<<" src | grep -v "'COMMENT'" | grep -v "<<<" | grep -v multi_line_comment.bash

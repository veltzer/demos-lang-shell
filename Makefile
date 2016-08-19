.PHONY: all
all:
	$(info doing [$@])

.PHONY: check
check:
	$(info doing [$@])
	@git grep "<<" src | grep -v "'COMMENT'" | grep -v "<<<" | grep -v multi_line_comment.bash || exit 0

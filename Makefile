.PHONY: all
all:
	@true

.PHONY: clean_hard
clean_hard:
	$(Q)git clean -qffxd

.PHONY: check
check:
	$(info doing [$@])
	$(Q)git grep "<<" src | grep -v "'COMMENT'" | grep -v "<<<" | grep -v multi_line_comment.bash || exit 0

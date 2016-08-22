.PHONY: all
all: tools.stamp
	@true

.PHONY: check
check:
	$(info doing [$@])
	@git grep "<<" src | grep -v "'COMMENT'" | grep -v "<<<" | grep -v multi_line_comment.bash || exit 0

tools.stamp:
	$(info doing [$@])
	@templar_cmd install_deps
	@make_helper touch-mkdir $@

.PHONY: all
all: tools.stamp
	@true

tools.stamp: config/deps.py
	$(info doing [$@])
	$(Q)pymakehelper touch_mkdir $@

.PHONY: clean_hard
clean_hard:
	$(Q)git clean -qffxd

.PHONY: check
check:
	$(info doing [$@])
	$(Q)git grep "<<" src | grep -v "'COMMENT'" | grep -v "<<<" | grep -v multi_line_comment.bash || exit 0

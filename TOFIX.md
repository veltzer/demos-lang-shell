# TOFIX

Findings from a code scan on 2026-10-04.

## High

- `rsconstruct.toml:7` - the shellcheck processor uses its default `src_extensions` (`.sh`, `.bash`), so the 35 `.ksh` files under `src/ksh/` (the bulk of the repo) are never checked; add `src_extensions = [".sh", ".bash", ".ksh"]` (shellcheck supports the ksh dialect from the shebang) and fix what it reports. `doc/TODO.txt:1` ("add shellcheck to check all my shell scripts") is only half done because of this.
- `src/ksh/examples/exit.ksh:7` - the `if [[ $result ]]` / `then` block is never closed with `fi`, so the script is a syntax error and the demo cannot run; add `fi` (and the intended body) before `exit 5`.

## Medium

- `src/ksh/examples/bigapp.ksh:9` - sources `$base/$relativ_name` (typo for `relative_name`, assigned at line 8), and the `myfunctions.ksh` it tries to include (line 11) is not in the repo, so `foo`/`bar` at lines 18-19 are undefined; fix the variable name and add `src/ksh/examples/myfunctions.ksh` defining `foo` and `bar`.
- `src/ksh/examples/for.ksh:4` and `src/ksh/examples/functions_2.ksh:31` - unquoted `$@` array expansion (shellcheck SC2068, error level) re-splits arguments containing spaces; use `"$@"` unless splitting is the lesson, in which case add an inline `# shellcheck disable=SC2068` with a comment saying so.
- `src/csh/hello.csh:1` - the three `.csh` files are checked by no processor (shellcheck has no csh support); at minimum run `csh -n` on them via a script processor, or note in the README that they are unchecked.

## Low

- `to_integrate/shebang_java_run/compile_and_run_java.sh:2` - writes to `/tmp/$1`, which breaks for any argument containing a directory and races on a shared `/tmp`; use `mktemp -d` and `basename`. The `to_integrate/` directory itself is a parking area: integrate it under `src/` or delete it.
- `README.md:5` - points to `demos-bash`, but the repo is `demos-lang-bash`; also "it's" should be "its". The README does not list the shells/tools covered (ksh, csh, awk, sed, perl, C helpers).
- `src/unix_fundamentals/hello_bash/hello_bash.bash:1` - a bash demo in a repo described as "shells except bash" (`README.md:3`); move it to demos-lang-bash or reword the README.
- `src/csh/doc/TODO.txt:1` and `src/unix_fundamentals/doc/TODO.txt:1` - stale wish lists (e.g. "hello_clojure" now lives in demos-lang-clojure); prune them.

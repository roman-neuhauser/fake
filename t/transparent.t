transparent fake keeps $FAKE_BINDIR in $PATH
============================================

setup::

  $ . $TESTDIR/setup

  $ export PATH="$FAKE_BINDIR:...:$PATH"

  $ mkdir ...
  $ cat > .../fubar <<\EOF
  > printf "%s relaying to snafu\n" "$0"
  > snafu "$@"
  > EOF
  $ chmod u+x .../fubar

test::

  $ fake -cvx 42 snafu
  $ fake -ct fubar

  $ fubar rofl lmao
  *.../fubar relaying to snafu (glob)
  snafu rofl lmao
  [42]

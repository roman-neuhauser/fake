-t combines with -v
===================

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
  $ fake -ctv fubar

  $ fubar rofl lmao
  fubar rofl lmao
  *.../fubar relaying to snafu (glob)
  snafu rofl lmao
  [42]

  $ fubar rofl lmao >/dev/null
  fubar rofl lmao
  snafu rofl lmao
  [42]

  $ fubar rofl lmao 2>/dev/null
  *.../fubar relaying to snafu (glob)
  [42]

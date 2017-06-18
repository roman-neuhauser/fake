Pass-through fake execs next-in-$PATH
=====================================

setup::

  $ . $TESTDIR/setup

  $ mkdir ...
  $ cat > .../fubar <<\EOF
  > #!/bin/sh
  > printf "REAL FUBAR\n"
  > exit 42
  > EOF
  $ chmod 755 .../fubar

  $ export PATH="$FAKE_BINDIR:...:$PATH"


test::

  $ fake -cvx 11 fubar
  $ fake -p fubar rofl
  $ fake -cp fubar omg

  $ fubar
  fubar
  [11]

  $ fubar snafu
  fubar snafu
  [11]

  $ fubar rofl
  REAL FUBAR
  [42]

  $ fubar rofl lmao
  fubar rofl lmao
  [11]

  $ fubar omg
  REAL FUBAR
  [42]

  $ fubar omg wtf
  REAL FUBAR
  [42]

-p combines with -v
===================

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

  $ fake -cx 11 fubar
  $ fake -pv fubar rofl
  $ fake -cpv fubar omg

  $ fubar
  [11]

  $ fubar snafu
  [11]

  $ fubar rofl lmao
  [11]

  $ fubar rofl
  fubar rofl
  REAL FUBAR
  [42]

  $ fubar rofl >/dev/null
  fubar rofl
  [42]

  $ fubar rofl 2>/dev/null
  REAL FUBAR
  [42]

  $ fubar omg
  fubar omg
  REAL FUBAR
  [42]

  $ fubar omg wtf
  fubar omg wtf
  REAL FUBAR
  [42]

  $ fubar omg wtf >/dev/null
  fubar omg wtf
  [42]

  $ fubar omg wtf 2>/dev/null
  REAL FUBAR
  [42]

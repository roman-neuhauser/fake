-b announces body on stdin
==========================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -bc fubar <<\EOF
  > #!/bin/sh
  > echo "hello ${1-unknown}!"
  > EOF

  $ test -f $FAKE_BINDIR/fubar
  $ test -d $FAKE_BINDIR/.fubar
  $ ls $FAKE_BINDIR/.fubar
  X
  $ test -f $FAKE_BINDIR/.fubar/X
  $ test -x $FAKE_BINDIR/.fubar/X
  $ cat $FAKE_BINDIR/.fubar/X
  #!/bin/sh
  echo "hello ${1-unknown}!"

-b announces body on stdin
==========================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -b fubar <<\EOF
  > #!/bin/sh
  > echo "hello world!"
  > EOF

  $ test -f $FAKE_BINDIR/fubar
  $ test -d $FAKE_BINDIR/.fubar
  $ ls $FAKE_BINDIR/.fubar
  0-
  $ test -f $FAKE_BINDIR/.fubar/0-
  $ test -x $FAKE_BINDIR/.fubar/0-
  $ cat $FAKE_BINDIR/.fubar/0-
  #!*/sh (glob)
  echo "hello world!"

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
  $ ls $FAKE_BINDIR/.fubar/0-
  impl
  $ test -f $FAKE_BINDIR/.fubar/0-/impl
  $ test -x $FAKE_BINDIR/.fubar/0-/impl
  $ cat $FAKE_BINDIR/.fubar/0-/impl
  #!/bin/sh
  echo "hello world!"

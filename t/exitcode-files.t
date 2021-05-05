-x gives exit code for matching invocation
==========================================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -x 42 fubar

  $ test -f $FAKE_BINDIR/fubar
  $ test -d $FAKE_BINDIR/.fubar
  $ ls $FAKE_BINDIR/.fubar
  0-
  $ test -f $FAKE_BINDIR/.fubar/0-/impl
  $ test -x $FAKE_BINDIR/.fubar/0-/impl
  $ cat $FAKE_BINDIR/.fubar/0-/impl
  #!/bin/sh
  exit 42

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
  $ test -f $FAKE_BINDIR/.fubar/0-
  $ test -x $FAKE_BINDIR/.fubar/0-
  $ cat $FAKE_BINDIR/.fubar/0-
  #!*sh (glob)
  exit 42

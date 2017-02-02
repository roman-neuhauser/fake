catchall fake accepts any argv
==============================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -c fubar

  $ test -f $FAKE_BINDIR/fubar
  $ test -d $FAKE_BINDIR/.fubar
  $ ls $FAKE_BINDIR/.fubar
  X
  $ test -f $FAKE_BINDIR/.fubar/X
  $ test -x $FAKE_BINDIR/.fubar/X

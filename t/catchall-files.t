catchall fake accepts any argv
==============================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -c fubar

  $ test -f $FAKE_BINDIR/fubar
  $ test -d $FAKE_BINDIR/.fubar
  $ ls $FAKE_BINDIR/.fubar
  0+
  $ test -f $FAKE_BINDIR/.fubar/0+
  $ test -x $FAKE_BINDIR/.fubar/0+

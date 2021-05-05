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
  $ ls $FAKE_BINDIR/.fubar/0+
  impl
  $ test -f $FAKE_BINDIR/.fubar/0+/impl
  $ test -x $FAKE_BINDIR/.fubar/0+/impl

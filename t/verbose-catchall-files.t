setup::

  $ . $TESTDIR/setup


test::

  $ fake -cv fubar

  $ test -f $FAKE_BINDIR/fubar
  $ test -d $FAKE_BINDIR/.fubar
  $ ls $FAKE_BINDIR/.fubar
  0+
  $ ls $FAKE_BINDIR/.fubar/0+
  impl

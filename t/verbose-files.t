setup::

  $ . $TESTDIR/setup


test::

  $ fake -v fubar

  $ test -f $FAKE_BINDIR/fubar
  $ test -d $FAKE_BINDIR/.fubar
  $ ls $FAKE_BINDIR/.fubar
  0-

$ cat $FAKE_BINDIR/fubar

$ cat $FAKE_BINDIR/.fubar/0-

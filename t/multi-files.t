multiple fakes for a single command
===================================

setup::

  $ . $TESTDIR/setup

test::

  $ fake fubar --various things
  $ fake fubar more random stuff

  $ test -f $FAKE_BINDIR/fubar
  $ test -d $FAKE_BINDIR/.fubar
  $ (cd $FAKE_BINDIR/.fubar && find * -type f)
  2-/5KMNCOBID5NNASO=-EHK6IRJ7EC======
  3-/DLNN4P8=-E9GMSP3FDK======-EDQ7APJ6
  $ test -f $FAKE_BINDIR/.fubar/2-/5KMNCOBID5NNASO=-EHK6IRJ7EC======
  $ test -x $FAKE_BINDIR/.fubar/2-/5KMNCOBID5NNASO=-EHK6IRJ7EC======
  $ test -f $FAKE_BINDIR/.fubar/3-/DLNN4P8=-E9GMSP3FDK======-EDQ7APJ6
  $ test -x $FAKE_BINDIR/.fubar/3-/DLNN4P8=-E9GMSP3FDK======-EDQ7APJ6

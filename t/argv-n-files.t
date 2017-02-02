default fake accepts exact argv
===============================

setup::

  $ . $TESTDIR/setup

test::

  $ fake fubar --more stuff

  $ test -f $FAKE_BINDIR/fubar
  $ test -d $FAKE_BINDIR/.fubar
  $ ls $FAKE_BINDIR/.fubar
  2-5KMMQRRICK======-EDQ7APJ6
  $ test -f $FAKE_BINDIR/.fubar/2-5KMMQRRICK======-EDQ7APJ6
  $ test -x $FAKE_BINDIR/.fubar/2-5KMMQRRICK======-EDQ7APJ6

  $ cat $FAKE_BINDIR/.fubar/2-5KMMQRRICK======-EDQ7APJ6

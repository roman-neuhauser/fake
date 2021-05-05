default fake accepts exact argv
===============================

setup::

  $ . $TESTDIR/setup

test::

  $ fake fubar --more stuff

  $ test -f $FAKE_BINDIR/fubar
  $ test -d $FAKE_BINDIR/.fubar
  $ (cd $FAKE_BINDIR/.fubar && find * -type f)
  2-/5KMMQRRICK======-EDQ7APJ6/impl
  $ test -f $FAKE_BINDIR/.fubar/2-/5KMMQRRICK======-EDQ7APJ6/impl
  $ test -x $FAKE_BINDIR/.fubar/2-/5KMMQRRICK======-EDQ7APJ6/impl

  $ cat $FAKE_BINDIR/.fubar/2-/5KMMQRRICK======-EDQ7APJ6/impl
  #!/bin/sh

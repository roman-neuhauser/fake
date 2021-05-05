default fake accepts exact argv
===============================

setup::

  $ . $TESTDIR/setup

test::

  $ fake fubar

  $ test -f $FAKE_BINDIR/fubar
  $ test -d $FAKE_BINDIR/.fubar
  $ ls $FAKE_BINDIR/.fubar
  0-
  $ ls $FAKE_BINDIR/.fubar/0-
  impl
  $ test -f $FAKE_BINDIR/.fubar/0-/impl
  $ test -x $FAKE_BINDIR/.fubar/0-/impl

  $ cat $FAKE_BINDIR/.fubar/0-/impl
  #!/bin/sh

catchall fake accepts any argv
==============================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -cv fubar sna fu

  $ ls -A $FAKE_BINDIR
  .fubar
  fubar

  $ ls $FAKE_BINDIR/.fubar
  2+EDN62===-CPQG====

catchall fake accepts any argv
==============================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -cv fubar sna fu

  $ ls -A $FAKE_BINDIR
  .fubar
  fubar

  $ (cd $FAKE_BINDIR/.fubar && find * -type f)
  2+/EDN62===-CPQG====/impl

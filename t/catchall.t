catchall fake accepts any argv
==============================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -c fubar

  $ fubar

  $ fubar stuff

  $ fubar --more stuff

  $ fubar -omg --even=more stuff

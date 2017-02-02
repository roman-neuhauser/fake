catchall fake accepts any argv
==============================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -x 7 -c fubar

  $ fubar
  [7]

  $ fubar stuff
  [7]

  $ fubar --more stuff
  [7]

  $ fubar -omg --even=more stuff
  [7]

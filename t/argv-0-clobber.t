fake clobbers preexisting fakes
===============================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -x 42 fubar
  $ fubar
  [42]

  $ fake fubar
  $ fubar

fake clobbers preexisting fakes
===============================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -x 11 fubar
  $ fubar
  [11]

  $ fake -x 22 fubar
  $ fubar
  [22]


  $ fake -x 33 snafu rofl
  $ snafu rofl
  [33]

  $ fake -x 44 snafu rofl
  $ snafu rofl
  [44]

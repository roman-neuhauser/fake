fake clobbers preexisting fakes
===============================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -cx 42 snafu
  $ snafu rofl
  [42]

  $ fake -c snafu
  $ snafu rofl

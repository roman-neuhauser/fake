fake clobbers preexisting fakes
===============================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -x 69 snafu rofl
  $ snafu rofl
  [69]

  $ fake snafu rofl
  $ snafu rofl

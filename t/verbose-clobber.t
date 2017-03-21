fake clobbers preexisting fakes
===============================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -x 42 fubar --snafu
  $ fubar --snafu
  [42]

  $ fake -v fubar --snafu
  $ fubar --snafu
  fubar --snafu

fake clobbers preexisting fakes
===============================

setup::

  $ . $TESTDIR/setup


test::

  $ echo FUBAR | fake -o fubar
  $ fubar
  FUBAR

  $ echo CLOBBERED | fake -o fubar
  $ fubar
  CLOBBERED

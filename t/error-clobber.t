fake clobbers preexisting fakes
===============================

setup::

  $ . $TESTDIR/setup


test::

  $ echo FUBAR | fake -e fubar
  $ fubar
  FUBAR

  $ echo CLOBBERED | fake -e fubar
  $ fubar
  CLOBBERED

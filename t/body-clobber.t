fake clobbers preexisting fakes
===============================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -x 42 fubar
  $ fubar
  [42]

  $ fake -b fubar <<\EOF
  > #!/bin/sh
  > echo CLOBBERED
  > EOF

  $ fubar
  CLOBBERED

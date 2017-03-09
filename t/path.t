fake bodies ignore fakes
========================

setup::

  $ . $TESTDIR/setup


test::

  $ echo HELLO > msg

  $ fake -b cat msg <<\EOF
  > #!/bin/sh
  > echo NOT REALLY
  > EOF

  $ fake -b date <<\EOF
  > #!/bin/sh
  > cat msg
  > EOF

  $ date
  HELLO

fake bodies ignore fakes
========================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -b ls foo <<\EOF
  > ls foo
  > EOF

  $ ls foo 2>/dev/null
  [1]
  $ touch foo
  $ ls foo
  foo

  $ fake -b ls foo <<\EOF
  > #!/bin/sh
  > ls bar
  > EOF

  $ ls foo 2>/dev/null
  [1]
  $ touch bar
  $ ls foo
  bar

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

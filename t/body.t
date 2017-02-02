-b announces body on stdin
==========================

setup::

  $ . $TESTDIR/setup


test::

  $ fake -b fubar <<\EOF
  > #!/bin/sh
  > echo "hello world!"
  > EOF

  $ fubar
  hello world!


  $ fubar -omg
  fake: error: argv mismatch
  fake: expected: fubar
  fake: received: fubar -omg
  [100]

  $ fubar stuff
  fake: error: argv mismatch
  fake: expected: fubar
  fake: received: fubar stuff
  [100]
